class CreateProjectMessages < ActiveRecord::Migration
  def change
    create_table :project_messages, id: :uuid  do |t|
      t.uuid    :project_id
      t.uuid    :user_id
      t.string  :text

      t.timestamps null: false
    end
  end
end
