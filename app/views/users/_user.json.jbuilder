json.extract! user, :id, :age, :owner, :created_at, :updated_at
json.url user_url(user, format: :json)
