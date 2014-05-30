class BusinessCategory < ActiveRecord::Base

validate :business_id, :category_id, presence: true  

  def self.yelp_business_json_to_categories(biz_id, json)
    business = Business.find(biz_id)
    json["categories"].each do |cat_json|
      json_to_category(biz_id, cat_json)
    end
  end
    

  def self.json_to_category(biz_id, json)    

    title, cat_alias = json
    
    new_category = Category.new(title: title, category_alias: cat_alias)
    
    unless category = Category.find_by(category_alias: cat_alias)
      new_category.save!
      category = new_category
    end
    
    new_biz_cat = BusinessCategory.new(
      category_id: category.id,
      business_id: biz_id
    )
    
    unless biz_cat = BusinessCategory.find_by(category_id: category.id, business_id: biz_id)
      new_biz_cat.save!
    end
      
  end


end
