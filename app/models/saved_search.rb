class SavedSearch < ActiveRecord::Base

  validate :user_id, :search_id, presence: true
  
  belongs_to :user
  
  belongs_to :search

end
