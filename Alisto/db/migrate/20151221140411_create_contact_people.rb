class CreateContactPeople < ActiveRecord::Migration
  def change
    create_table :contact_people do |t|
      t.integer :user_id
      t.string :fname
      t.string :lname
      t.string :email
      t.string :num

      t.timestamps null: false
    end
  end
end
