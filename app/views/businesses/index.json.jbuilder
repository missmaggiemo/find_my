json.array!(@businesses) do |business|
  json.extract! business, 
  json.url business_url(business, format: :json)
end