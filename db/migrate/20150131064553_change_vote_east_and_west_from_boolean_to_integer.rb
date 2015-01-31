class ChangeVoteEastAndWestFromBooleanToInteger < ActiveRecord::Migration
  def change
    change_column :users, :vote_east, :integer, :default => 0
    change_column :users, :vote_west, :integer, :default => 0
  end
end
