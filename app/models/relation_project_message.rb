class RelationProjectMessage < BaseModel
  belongs_to :project
  belongs_to :message
end
