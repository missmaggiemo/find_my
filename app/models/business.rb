class Business < ActiveRecord::Base
end


# sample JSON

# {"is_claimed"=>true, "rating"=>4.5, "mobile_url"=>"http://m.yelp.com/biz/gary-danko-san-francisco", "rating_img_url"=>"http://s3-media2.ak.yelpcdn.com/assets/2/www/img/99493c12711e/ico/stars/v1/stars_4_half.png", "review_count"=>3699, "name"=>"Gary Danko", "snippet_image_url"=>"http://s3-media3.ak.yelpcdn.com/photo/ZH3OL6y9L-9K_rlS5RLr1g/ms.jpg", "rating_img_url_small"=>"http://s3-media2.ak.yelpcdn.com/assets/2/www/img/a5221e66bc70/ico/stars/v1/stars_small_4_half.png", "url"=>"http://www.yelp.com/biz/gary-danko-san-francisco", "menu_date_updated"=>1396240079, "phone"=>"4157492060", "snippet_text"=>"Fantastic service and amazing food. What more can you ask for? \n\nThough this restaurant is pretty fancy the servers are very warm and friendly. There is no...", "image_url"=>"http://s3-media2.ak.yelpcdn.com/bphoto/tkg68QNAqijw0OIWpPQv_Q/ms.jpg", "categories"=>[["American (New)", "newamerican"]], "display_phone"=>"+1-415-749-2060", "rating_img_url_large"=>"http://s3-media4.ak.yelpcdn.com/assets/2/www/img/9f83790ff7f6/ico/stars/v1/stars_large_4_half.png", "menu_provider"=>"single_platform", "id"=>"gary-danko-san-francisco", "is_closed"=>false, "location"=>{"city"=>"San Francisco", "display_address"=>["800 N Point St", "Russian Hill", "San Francisco, CA 94109"], "neighborhoods"=>["Russian Hill", "Fisherman's Wharf"], "postal_code"=>"94109", "country_code"=>"US", "address"=>["800 N Point St"], "state_code"=>"CA"}}

# need model for:

# categories
# locations
# display address
# neighborhoods
# address
