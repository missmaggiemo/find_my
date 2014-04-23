require 'addressable/uri'

class GeocodeSession
  
  def self.get_geocode_from_address(address)
    parse_json_from_uri(geocode_api_request(address))
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
  
end