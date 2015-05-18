class ProjectMessage < BaseModel

  default_scope { includes(:user) }

  belongs_to :project
  belongs_to :user
end
