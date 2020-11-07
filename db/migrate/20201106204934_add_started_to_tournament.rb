class AddStartedToTournament < ActiveRecord::Migration[6.0]
  def change
    add_column :tournaments, :started, :boolean, default: false
  end
end
