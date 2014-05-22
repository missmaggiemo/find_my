class YelpReview < ActiveRecord::Base

  validate :id_string, :yelp_user_id, presence: true
  

  def self.yelp_business_json_to_reviews(biz_id, json)
    business = Business.find(biz_id)
    review_array = []
    json["reviews"].each do |review_json|
      review_array << json_to_review(biz_id, review_json)
    end
    business.yelp_reviews.each { |review| review_array << review unless review_array.include?(review) }
    review_array
  end
    

  def self.json_to_review(biz_id, json)    
    
    new_review = YelpReview.new(
      excerpt: json["excerpt"],
      id_string: json["id"],
      rating: json["rating"],
      rating_image_large_url: json["rating_image_large_url"],
      rating_image_small_url: json["rating_image_small_url"],
      rating_image_url: json["rating_image_url"],
      yelp_time_created: json["time_created"],
      yelp_user_id: json["user"]["id"],
      yelp_user_img: json["user"]["image_url"],
      yelp_user_name: json["user"]["name"],
      business_id: biz_id,
    )
      
    # this could all be totally broken because I can't test it right now
    unless review = YelpReview.find_by(id_string: new_review.id_string)
      new_review.save!
    end
    review || new_review
  end


end
