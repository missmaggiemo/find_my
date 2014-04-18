class StaticPagesController < ApplicationController
 
  def results
    
  end
  
  def generate_yelp_results(search_term, location)
  
    consumer_key = 'MNTfhf4kOwBD0KYKjwOY_w'
    consumer_secret = 'i3O_Q8kZmZaj3AVkpZnjwZMOqcw'
    token = 'UEFYT8HKCo3tqTAwNDYvFy3H_tfLN6MY'
    token_secret = 'Hb4-Of9I9vt-w6_-VMM0qC432GU'

    api_host = 'api.yelp.com'

    consumer = OAuth::Consumer.new(consumer_key, consumer_secret, {:site => "http://#{api_host}"})
    access_token = OAuth::AccessToken.new(consumer, token, token_secret)

    path = "/v2/search?term=#{search_term}&location=#{URI::encode(location)}"

    access_token.get(path).body
  
  end
  
end
