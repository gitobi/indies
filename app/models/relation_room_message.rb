class RelationRoomMessage < BaseModel
  belongs_to :room
  belongs_to :message
end
