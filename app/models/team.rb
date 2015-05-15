class Team < BaseModel

  has_many :relation_team_users
  has_many :relation_team_messages , -> { includes [:user, :room, :team, :project] }

  has_many :users,    :through => :relation_team_users
  has_many :messages, :through => :relation_team_messages

end
