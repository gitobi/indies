class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members, id: :uuid do |t|
      t.uuid :parent
      t.uuid :child
      t.datetime :join
      t.datetime :leave

      t.timestamps null: false
    end
  end
end
