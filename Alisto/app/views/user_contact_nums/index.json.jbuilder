json.array!(@user_contact_nums) do |user_contact_num|
  json.extract! user_contact_num, :id, :user_id, :num
  json.url user_contact_num_url(user_contact_num, format: :json)
end
