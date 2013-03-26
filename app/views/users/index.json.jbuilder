json.array!(@users) do |user|
  json.extract! user, :uid, :name, :password, :mail, :tagline, :last_update, :last_access, :status, :timezone, :metadata, :user_roles
  json.url user_url(user, format: :json)
end