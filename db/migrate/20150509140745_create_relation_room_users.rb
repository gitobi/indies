class CreateRelationRoomUsers < ActiveRecord::Migration
  def change
    create_table :relation_room_users, id: :uuid do |t|
      t.uuid :room_id
      t.uuid :user_id
      t.uuid :authority_id
      t.datetime :joined
      t.datetime :leave

      t.timestamps null: false
    end
  end
end
