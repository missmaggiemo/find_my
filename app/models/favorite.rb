class Favorite < ActiveRecord::Base
  
  validate :user_id, :business_id, presence: true
  
  belongs_to :user
  
  belongs_to :business
  
end
