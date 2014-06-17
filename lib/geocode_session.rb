require 'addressable/uri'

class GeocodeSession
  
  def self.get_geocode_from_address(address)
    json_hash = parse_json_from_uri(geocode_api_request(address))
    return nil if json_hash["status"] == "ZERO_RESULTS"
    {}.tap do |geocode_hash|
      geocode_hash['latitude'] = json_hash["results"][0]["geometry"]["location"]["lat"]
      geocode_hash['longitude'] = json_hash["results"][0]["geometry"]["location"]["lng"]
    end
  end
  
  def self.geocode_api_request(address)
    Addressable::URI.new(
      :scheme => "https",
      :host => "maps.googleapis.com",
      :path => "maps/api/geocode/json",
      :query_values => {
        key: ENV['GOOGLE_API_KEY'],
        address: address,
        sensor: false
      }
    )
  end
  
  def self.parse_json_from_uri(uri)
    JSON.parse(RestClient.get(uri.to_s))
  end
  
  def self.reverse_geocode_api_request(lat, lng)
    Addressable::URI.new(
      :scheme => "https",
      :host => "maps.googleapis.com",
      :path => "maps/api/geocode/json",
      :query_values => {
        key: ENV['GOOGLE_API_KEY'],
        latlng: "#{lat},#{lng}",
        sensor: false
      }
    )
  end
  
  def self.get_address_from_geocode(lat, lng)
    json_hash = self.parse_json_from_uri(reverse_geocode_api_request(lat, lng))
    json_hash["results"][0]["formatted_address"]
  end

  
end