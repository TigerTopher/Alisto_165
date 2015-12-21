class CreateSyndicates < ActiveRecord::Migration
  def change
    create_table :syndicates do |t|
      t.string :name
      t.text :overview
      t.integer :report_count

      t.timestamps null: false
    end
  end
end
