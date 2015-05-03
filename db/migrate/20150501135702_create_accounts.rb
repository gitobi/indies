class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts, id: :uuid do |t|
      t.string :mail
      t.string :phone
      t.string :token

      t.timestamps null: false
    end
  end
end
