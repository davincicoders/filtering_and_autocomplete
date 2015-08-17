json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :address_line, :city, :state, :zip
  json.url user_url(user, format: :json)
end
