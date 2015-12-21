json.array!(@classifications) do |classification|
  json.extract! classification, :id, :crime_name, :crime_details
  json.url classification_url(classification, format: :json)
end
