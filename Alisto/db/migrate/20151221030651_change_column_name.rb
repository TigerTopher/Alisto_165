class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :classifications, :syndicate, :syndicate_id
  end
end
