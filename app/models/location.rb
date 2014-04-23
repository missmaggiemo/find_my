class Location < ActiveRecord::Base
  
  belongs_to :business
  
  def self.json_to_location(business_id, json)    
    new_loc = Location.new(
      business_id: business_id,
      city: json["city"],
      display_address: json["display_address"].join(', '),
      neighborhoods: json["neighborhoods"].join(', '),
      postal_code: json["postal_code"],
      country_code: json["country_code"],
      address: json["address"].first,
      state_code: json["state_code"]
    )
      
    unless Location.find_by(business_id: new_loc.business_id.to_s)
      new_loc.save!
    end
  end
  
  # def coodinates
#     # get lat/long coordinates from Google API
#   end
  
end


# create_table "locations", force: true do |t|
#   t.string   "business_id"
#   t.string   "city"
#   t.string   "display_address"
#   t.string   "neighborhoods"
#   t.string   "postal_code"
#   t.string   "country_code"
#   t.string   "address"
#   t.string   "state_code"
#   t.datetime "created_at"
#   t.datetime "updated_at"
# end