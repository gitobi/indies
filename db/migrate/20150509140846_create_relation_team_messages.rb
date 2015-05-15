class CreateRelationTeamMessages < ActiveRecord::Migration
  def change
    create_table :relation_team_messages, id: :uuid do |t|
      t.uuid :team_id
      t.uuid :message_id

      t.timestamps null: false
    end
  end
end
