json.array! @users do |user|
  json.(user, :id, :name, :pictuer, :created_at, :updated_at)
end
