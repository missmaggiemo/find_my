class Category < ActiveRecord::Base
  
  validate :title, :category_alias, presence: true  

  has_many :business_categories
  
  has_many :businesses, through: :business_categories, source: :business
  
end
