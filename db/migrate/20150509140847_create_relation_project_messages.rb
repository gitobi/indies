class CreateRelationProjectMessages < ActiveRecord::Migration
  def change
    create_table :relation_project_messages, id: :uuid  do |t|
      t.uuid :project_id
      t.uuid :message_id

      t.timestamps null: false
    end
  end
end
