class AddIndexToVotes < ActiveRecord::Migration
  def change
    add_index :votes, :game_id
    add_index :votes, :user_id
  end
end
