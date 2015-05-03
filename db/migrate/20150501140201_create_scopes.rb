class CreateScopes < ActiveRecord::Migration
  def change
    create_table :scopes, id: :uuid do |t|
      t.string :range

      t.timestamps null: false
    end
  end
end