class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :username
      t.integer :reports_issued

      t.timestamps null: false
    end
    add_index :users, [:lname, :fname]
  end
end
