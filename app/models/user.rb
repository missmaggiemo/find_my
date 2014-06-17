
class User < ActiveRecord::Base
  extend FriendlyId
  
  friendly_id :username

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
 has_many :ratings

 has_many :favorites
 
 has_many :saved_searches
 
 has_many :friendships, dependent: :destroy
 
 has_many :friend_requests, class_name: "Friendship", foreign_key: "friend_id", primary_key: "id"
 
 has_many :friends, through: :friendships, source: :friend
 
 has_many :recommendations
 
 
 
 
 def generate_recommendation
 
    possible_recs = []

    viable_categories = []
    
    visited = self.visited_businesses

    unless visited.empty?
      viable_categories = visited[0, 3].map(&:categories).flatten.uniq
    end
    
    return nil if viable_categories.empty?

    # how do I find businesses based on categories?

    viable_categories.each do |cat|
      possible_recs = possible_recs | cat.businesses
    end

    possible_recs = possible_recs.sort_by { |biz| (biz.categories & viable_categories).length + biz.yelp_rating }.reverse
  
    possible_recs.each do |biz|
      unless visited.include?(biz) || Recommendation.find_by(user_id: self.id, business_id: biz.id)
        Recommendation.create(user_id: self.id, business_id: biz.id, viewed: false)
        break
      end
    end

    self.new_recommendations.first

 end
 
 
 def new_recommendations
   Recommendation.where(user_id: self.id, viewed: false).order(created_at: :desc)
 end


  def visited_businesses
    (self.ratings + self.favorites).sort_by { |el| el.created_at }.reverse.map(&:business)
  end

 
 def friends
   self.friendships.select { |friend| friend.confirmed }.map(&:friend)
 end

 def pending_friendships
   self.friend_requests.select { |req| !req.confirmed }.map { |req| [req, User.find(req.user_id)] }
 end

 def email_hash
   Digest::MD5.hexdigest(self.email.downcase)
 end
 
 def favorites
   Favorite.where(user_id: self.id).order(created_at: :desc)
 end
 
 def recent_favorites
   Favorite.where(user_id: self.id).order(created_at: :desc).limit(10)   
 end

 def ratings
   Rating.where(user_id: self.id).order(created_at: :desc)
 end
 
 def recent_ratings
   Rating.where(user_id: self.id).order(created_at: :desc).limit(10)   
 end
 
 def saved_searches
   SavedSearch.where(user_id: self.id).order(created_at: :desc)
 end
 
 def recent_searches
   SavedSearch.where(user_id: self.id).order(created_at: :desc).limit(10)
 end
 
 def activity
   (self.favorites + self.ratings + self.saved_searches).sort_by { |feed_item| -1 * feed_item.created_at.to_i }
 end
 
 def feed
   feed_array = self.recent_favorites + self.recent_ratings + self.recent_searches
   self.friends.each do |friend|
     feed_array = feed_array + friend.activity[0, 10]
   end
   feed_array.sort_by { |feed_item| feed_item.created_at }.reverse
 end


 
end
