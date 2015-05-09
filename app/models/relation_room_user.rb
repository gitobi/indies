class RelationRoomUser < BaseModel
  belongs_to :room
  belongs_to :user
end
