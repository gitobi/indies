class CreateRelationProjectTeams < ActiveRecord::Migration
  def change
    create_table :relation_project_teams, id: :uuid  do |t|
      t.uuid :project_id
      t.uuid :team_id
      t.datetime :joined
      t.datetime :leave

      t.timestamps null: false
    end
  end
end
