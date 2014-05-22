
class Business < ActiveRecord::Base
  
  has_one :location
  
  has_many :ratings
  
  def rating
    unless self.ratings.empty?
      self.ratings.map(&:stars).inject(&:+) / self.ratings.length.to_f
    end 
  end

  
  def self.yelp_businesses_json_to_businesses(yelp_businesses_json)    
    yelp_businesses_json.each.with_object([]) do |business_json, business_arr|
      business_arr << json_to_business(business_json)
      Location.json_to_location(business_arr.last.id, business_json['location'])
    end
  end
  
  def self.json_to_business(json)    
    new_biz = Business.new(
      name: json["name"],
      yelp_review_count: json["review_count"],
      display_phone: json["display_phone"],
      url: json["url"],
      image_url: json["image_url"],
      snippet_text: json["snippet_text"],
      id_string: json["id"]
    )
      
    # this could all be totally broken because I can't test it right now
    unless biz = Business.find_by(id_string: new_biz.id_string)
      new_biz.save!
      Rating.create(user_id: 0, business_id: new_biz.id, stars: json["rating"].to_i)
    end
    biz || new_biz
  end
  
end


