class CreateAnonReports < ActiveRecord::Migration
  def change
    create_table :anon_reports do |t|
      t.string :title
      t.decimal :coordinate_x
      t.decimal :coordinate_y
      t.text :short_desc
      t.integer :classification
      t.datetime :date_issued
      t.text :full_report

      t.timestamps null: false
    end
  end
end
