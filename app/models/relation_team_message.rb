class RelationTeamMessage < BaseModel
  belongs_to :team
  belongs_to :message
end
