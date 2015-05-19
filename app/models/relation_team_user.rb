class RelationTeamUser < BaseModel
  belongs_to :team
  belongs_to :user
end
