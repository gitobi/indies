class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins, id: :uuid do |t|
      t.uuid :account_id
      t.datetime :logged_in
      t.datetime :last_operation
      t.datetime :logged_out

      t.timestamps null: false
    end
  end
end
