class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams, id: :uuid  do |t|
      t.uuid :scope_id
      t.string :name
      t.string :picture
      t.string :comment
      t.string :ditail

      t.timestamps null: false
    end
  end
end
