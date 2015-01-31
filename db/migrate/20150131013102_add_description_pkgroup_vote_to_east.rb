class AddDescriptionPkgroupVoteToEast < ActiveRecord::Migration
  def change
    add_column :easts, :description, :text
    add_column :easts, :pkgroup, :integer
    add_column :easts, :vote, :integer
  end
end
