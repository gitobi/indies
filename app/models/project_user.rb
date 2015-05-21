class ProjectUser < BaseModel
  belongs_to :project
  belongs_to :user
end
