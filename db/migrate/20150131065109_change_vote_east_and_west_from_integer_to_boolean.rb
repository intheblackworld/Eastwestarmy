class ChangeVoteEastAndWestFromIntegerToBoolean < ActiveRecord::Migration
  def change
    change_column :users, :vote_east, :boolean, :default => false
    change_column :users, :vote_west, :boolean, :default => false
  end
end
