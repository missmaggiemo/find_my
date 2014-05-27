
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
   self.favorites + self.ratings + self.saved_searches
 end

 
 def feed
   feed_array = self.recent_favorites + self.recent_ratings + self.recent_searches
   self.friends.each do |friend|
     feed_array = feed_array + friend.activity[0, 10]
   end
   feed_array.sort_by { |feed_item| feed_item.created_at }.reverse
 end


 
end
