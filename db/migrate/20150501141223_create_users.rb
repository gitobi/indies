class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      add_column :people, :account_id, :uuid
      add_column :people, :role_id, :uuid
    end
  end
end
