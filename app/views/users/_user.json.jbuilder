json.extract! user, :id, :fname, :lname, :username, :email, :add1, :phone, :active, :created_at, :updated_at
json.url user_url(user, format: :json)
