class Location < ActiveRecord::Base
  
  belongs_to :business
  
  def biz_id
    self.business_id.to_i
  end

  
  def self.json_to_location(business_id, json)    
    new_loc = Location.new(
      business_id: business_id,
      city: json["city"],
      display_address: json["display_address"].join(', '),
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
    if self.latitude.nil? && self.longitude.nil? 
      # get lat/long coordinates from Google API-- see lib
      coords = GeocodeSession.get_geocode_from_address(self.display_address)
      self.update(latitude: coords["latitude"], longitude: coords["longitude"])
    end
    
    { "latitude" => self.latitude, "longitude" => self.longitude }
  end
  
end

