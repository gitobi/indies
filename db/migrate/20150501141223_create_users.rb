class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, id: :uuid do |t|
      t.uuid   :account_id
      t.string :scope
      t.string :name
      t.string :picture
      t.string :comment
      t.string :detail

      t.timestamps null: false
    end
  end
end
