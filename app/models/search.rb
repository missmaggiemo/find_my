# == Schema Information
#
# Table name: searches
#
#  id          :integer          not null, primary key
#  location    :string(255)      not null
#  search_term :string(255)      not null
#  created_at  :datetime
#  updated_at  :datetime
#

class Search < ActiveRecord::Base
  
  validates :location, :search_term, presence: true
  
  has_many :saved_searches
  
end
