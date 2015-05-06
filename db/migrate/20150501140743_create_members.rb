class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members, id: :uuid do |t|
      t.uuid :parent_id
      t.uuid :child_id
      t.datetime :participate
      t.datetime :leave

      t.timestamps null: false
    end
  end
end
