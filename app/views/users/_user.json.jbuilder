json.extract! user, :id, :username
json.extract! user.user_info, :first_name, :last_name
json.extract! user, :created_at, :updated_at
json.url user_url(user, format: :json)
