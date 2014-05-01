class Search < ActiveRecord::Base
  
  validates :location, :search_term, presence: true
  
end
