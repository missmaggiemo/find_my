require "addressable/uri"

class YelpSession
  
  def self.generate_yelp_results(search_term, location, offset = 0)

    consumer_key = ENV['YELP_CONSUMER_KEY']
    consumer_secret = ENV['YELP_CONSUMER_SECRET']
    token = ENV['YELP_TOKEN']
    token_secret = ENV['YELP_TOKEN_SECRET']

    api_host = 'api.yelp.com'

    consumer = OAuth::Consumer.new(consumer_key, consumer_secret, {:site => "http://#{api_host}"})
    access_token = OAuth::AccessToken.new(consumer, token, token_secret)

    path = "/v2/search?term=#{URI::encode(search_term)}&offset=#{offset}&location=#{URI::encode(location)}"

    access_token.get(path).body

  end
  
  def self.get_yelp_json_for_business(id_string)
    consumer_key = ENV['YELP_CONSUMER_KEY']
    consumer_secret = ENV['YELP_CONSUMER_SECRET']
    token = ENV['YELP_TOKEN']
    token_secret = ENV['YELP_TOKEN_SECRET']

    api_host = 'api.yelp.com'

    consumer = OAuth::Consumer.new(consumer_key, consumer_secret, {:site => "http://#{api_host}"})
    access_token = OAuth::AccessToken.new(consumer, token, token_secret)

    path = Addressable::URI.encode("http://api.yelp.com/v2/business/#{id_string}")

    access_token.get(path).body
  end
  
end