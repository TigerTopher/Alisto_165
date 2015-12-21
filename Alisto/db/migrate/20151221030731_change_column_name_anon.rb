class ChangeColumnNameAnon < ActiveRecord::Migration
  def change
    rename_column :anon_reports, :classification, :classification_id
  end
end
