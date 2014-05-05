module SearchesHelper
  
  def get_address_text(lat, lng)
    GeocodeSession.get_address_from_geocode(lat, lng)
  end
  
  
end
