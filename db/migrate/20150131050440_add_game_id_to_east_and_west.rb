class AddGameIdToEastAndWest < ActiveRecord::Migration
  def change
    add_column :easts, :game_id, :integer
    add_index :easts, :game_id, :unique => true
    add_column :wests, :game_id, :integer
    add_index :wests, :game_id, :unique => true
  end
end
