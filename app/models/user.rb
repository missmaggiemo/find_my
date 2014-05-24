
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
 has_many :ratings

 has_many :favorites
 
 has_many :saved_searches
 
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
 
 def recent_searches
   SavedSearch.where(user_id: self.id).order(created_at: :desc).limit(10)
 end
 
 def feed
   feed_array = self.recent_favorites + self.recent_ratings + self.recent_searches
   feed_array.sort_by { |feed_item| feed_item.created_at }.reverse
 end



 
end
