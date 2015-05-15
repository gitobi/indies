class Message < BaseModel

  has_one :relation_room_message
  has_one :relation_team_message
  has_one :relation_project_message

  has_one :room,    :through => :relation_room_message
  has_one :team,    :through => :relation_team_message
  has_one :project, :through => :relation_project_message

  belongs_to :user
end
