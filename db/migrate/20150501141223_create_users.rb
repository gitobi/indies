class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, id: :uuid do |t|
      t.uuid :account_id
      t.uuid :role_id
      t.uuid :scope_id
      t.string :name
      t.string :picture
      t.string :comment
      t.string :ditail

      t.timestamps null: false
    end
  end
end
