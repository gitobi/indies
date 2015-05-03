class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people, id: :uuid do |t|
      t.string :type
      t.uuid :scope_id
      t.string :name
      t.string :picture
      t.string :comment
      t.string :ditail

      t.timestamps null: false
    end
  end
end
