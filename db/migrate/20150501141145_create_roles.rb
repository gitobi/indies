class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles, id: :uuid do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
