json.array! @users do |user|
  json.(user, :id, :name, :picture, :created_at, :updated_at)
end
