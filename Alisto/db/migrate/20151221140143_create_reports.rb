class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :reporter_id
      t.string :title
      t.decimal :coordinate_x
      t.decimal :coordinate_y
      t.text :short_desc
      t.integer :classification_id
      t.datetime :date_issude
      t.text :full_report

      t.timestamps null: false
    end
  end
end
