# == Schema Information
#
# Table name: businesses
#
#  id                   :integer          not null, primary key
#  name                 :string(255)      not null
#  created_at           :datetime
#  updated_at           :datetime
#  is_claimed           :boolean
#  rating               :float
#  mobile_url           :string(255)
#  rating_img_url       :string(255)
#  rating_img_url_large :string(255)
#  review_count         :integer
#  snippet_image_url    :string(255)
#  rating_img_url_small :string(255)
#  url                  :string(255)
#  menu_date_updated    :integer
#  phone                :integer
#  snippet_text         :text
#  image_url            :string(255)
#  display_phone        :string(255)
#  menu_provider        :string(255)
#  id_string            :string(255)
#  is_closed            :boolean
#

class Business < ActiveRecord::Base
  
  has_one :location
  
  def self.yelp_businesses_json_to_businesses(yelp_businesses_json)    
    yelp_businesses_json.each.with_object([]) do |business_json, business_arr|
      business_arr << json_to_business(business_json)
      Location.json_to_location(business_arr.last.id, business_json['location'])
    end
  end
  
  def self.json_to_business(json)    
    new_biz = Business.new(
      name: json["name"],
      rating: json["rating"],
      review_count: json["review_count"],
      display_phone: json["display_phone"],
      url: json["url"],
      image_url: json["image_url"],
      snippet_text: json["snippet_text"],
      id_string: json["id"]
    )
      
    unless Business.find_by(id_string: new_biz.id_string)
      new_biz.save!
    end
    Business.find_by(id_string: new_biz.id_string)
  end
  
end


