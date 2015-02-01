class RemoveVoteEastAndVoteWestFromUser < ActiveRecord::Migration
  def change
  	remove_column :users, :vote_east
  	remove_column :users, :vote_west
  end
end
