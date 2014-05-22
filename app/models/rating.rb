class Rating < ActiveRecord::Base

  validate :user_id, :business_id, :stars

  belongs_to :user
  
  belongs_to :business

end
