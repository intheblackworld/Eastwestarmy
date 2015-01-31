class AddDescriptionPkgroupVoteToWest < ActiveRecord::Migration
  def change
    add_column :wests, :description, :text
    add_column :wests, :pkgroup, :integer
    add_column :wests, :vote, :integer
  end
end
