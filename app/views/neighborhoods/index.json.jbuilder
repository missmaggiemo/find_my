json.array!(@neighborhoods) do |neighborhood|
  json.extract! neighborhood, 
  json.url neighborhood_url(neighborhood, format: :json)
end