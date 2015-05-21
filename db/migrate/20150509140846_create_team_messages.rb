class CreateTeamMessages < ActiveRecord::Migration
  def change
    create_table :team_messages, id: :uuid  do |t|
      t.uuid    :team_id
      t.uuid    :user_id
      t.string  :scope
      t.string  :text

      t.timestamps null: false
    end
  end
end
