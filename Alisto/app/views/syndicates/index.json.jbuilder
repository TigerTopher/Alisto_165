json.array!(@syndicates) do |syndicate|
  json.extract! syndicate, :id, :name, :overview, :report_count
  json.url syndicate_url(syndicate, format: :json)
end
