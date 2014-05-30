class Category < ActiveRecord::Base
  
  validate :title, :category_alias, presence: true  
  
end
