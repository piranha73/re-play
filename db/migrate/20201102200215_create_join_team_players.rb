class CreateJoinTeamPlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :join_team_players do |t|

      t.timestamps
    end
  end
end
