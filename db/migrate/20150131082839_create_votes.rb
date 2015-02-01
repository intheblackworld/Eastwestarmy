class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|

      t.timestamps
    end

    add_column :votes, :game_id, :integer
    add_column :votes, :user_id, :integer
    add_column :votes, :vote_for, :string
  end
end
