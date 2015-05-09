class CreateRelationRoomProjects < ActiveRecord::Migration
  def change
    create_table :relation_room_projects, id: :uuid  do |t|
      t.uuid :room_id
      t.uuid :project_id
      t.datetime :joined
      t.datetime :leave

      t.timestamps null: false
    end
  end
end
