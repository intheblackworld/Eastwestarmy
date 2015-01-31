class ChangeVoteToVotesCount < ActiveRecord::Migration
  def change
    rename_column :easts, :vote, :votes_count
    change_column :easts, :votes_count, :integer, :default => 0
    rename_column :wests, :vote, :votes_count
    change_column :wests, :votes_count, :integer, :default => 0
  end
end
