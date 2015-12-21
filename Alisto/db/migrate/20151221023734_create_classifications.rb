class CreateClassifications < ActiveRecord::Migration
  def change
    create_table :classifications do |t|
      t.string :crime_name
      t.text :crime_details

      t.timestamps null: false
    end
  end
end
