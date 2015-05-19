class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects, id: :uuid do |t|
      t.uuid    :scope_id
      t.string  :name
      t.string  :picture
      t.string  :comment
      t.string  :detail

      t.timestamps null: false
    end
  end
end
