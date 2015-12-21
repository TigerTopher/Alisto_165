json.array!(@contact_people) do |contact_person|
  json.extract! contact_person, :id, :user_id, :fname, :lname, :email, :num
  json.url contact_person_url(contact_person, format: :json)
end
