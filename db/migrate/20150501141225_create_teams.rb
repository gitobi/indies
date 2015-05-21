class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams, id: :uuid  do |t|
      t.string :scope
      t.string :name
      t.string :picture
      t.string :comment
      t.string :detail

      t.timestamps null: false
    end
  end
end
