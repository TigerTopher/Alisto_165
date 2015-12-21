class AddSyndicateToClassifications < ActiveRecord::Migration
  def change
    add_column :classifications, :syndicate, :integer
  end
end
