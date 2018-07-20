json.extract! user, :id, :email, :password, :password_confirmation, :zip, :address1, :address2, :created_at, :updated_at
json.url user_url(user, format: :json)
