class TeamMessage < BaseModel

  default_scope { includes(:user) }

  belongs_to :team
  belongs_to :user
end
