class UserRole < BaseModel
  belongs_to :user
  belongs_to :role
end
