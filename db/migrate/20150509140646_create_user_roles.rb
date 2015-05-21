class CreateUserRoles < ActiveRecord::Migration
  def change
    create_table :user_roles, id: :uuid  do |t|
      t.uuid    :user_id
      t.uuid    :role_id

      t.timestamps null: false
    end

    add_index :user_roles, [:user_id, :role_id], unique: true
  end


end
