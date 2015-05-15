class CreateRelationRoomMessages < ActiveRecord::Migration
  def change
    create_table :relation_room_messages, id: :uuid do |t|
      t.uuid :user_id
      t.uuid :room_id
      t.uuid :message_id

      t.timestamps null: false
    end
  end
end
