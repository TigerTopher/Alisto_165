json.array!(@users) do |user|
  json.extract! user, :id, :fname, :lname, :email, :username, :reports_issued
  json.url user_url(user, format: :json)
end
