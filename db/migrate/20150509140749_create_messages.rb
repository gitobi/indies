class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages, id: :uuid  do |t|
      t.uuid :room_id
      t.uuid :user_id
      t.string :text

      t.timestamps null: false
    end
  end
end
