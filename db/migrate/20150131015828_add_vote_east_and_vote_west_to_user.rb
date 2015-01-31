class AddVoteEastAndVoteWestToUser < ActiveRecord::Migration
  def change
    add_column :users, :vote_east, :boolean
    add_column :users, :vote_west, :boolean
  end
end
