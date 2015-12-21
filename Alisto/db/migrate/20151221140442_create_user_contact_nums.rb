class CreateUserContactNums < ActiveRecord::Migration
  def change
    create_table :user_contact_nums do |t|
      t.integer :user_id
      t.string :num

      t.timestamps null: false
    end
  end
end
