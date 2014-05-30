class Recommendation < ActiveRecord::Base

  validate :user_id, :business_id, presence: true
  
  belongs_to :business
  
  belongs_to :user

end
