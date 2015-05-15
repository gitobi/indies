class Room < BaseModel

  has_many :relation_room_users    , -> { includes :user }
  has_many :relation_room_messages, -> { includes [:user, :room, :team, :project] }

  has_many :users,    :through => :relation_team_users
  has_many :messages, :through => :relation_room_messages

end
