class RemovePkgroupColumnFromEastAndWest < ActiveRecord::Migration
  def change
    remove_column :easts, :pkgroup
    remove_column :wests, :pkgroup
  end
end
