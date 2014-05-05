# == Schema Information
#
# Table name: locations
#
#  id              :integer          not null, primary key
#  business_id     :string(255)
#  city            :string(255)
#  display_address :string(255)
#  neighborhoods   :string(255)
#  postal_code     :string(255)
#  country_code    :string(255)
#  address         :string(255)
#  state_code      :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

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
  
  def coordinates
    # get lat/long coordinates from Google API-- see lib
    GeocodeSession.get_geocode_from_address(self.display_address)
  end
  
end

