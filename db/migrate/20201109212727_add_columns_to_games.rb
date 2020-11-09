class AddColumnsToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :start_time, :datetime
    add_column :games, :end_time, :datetime
  end
end
