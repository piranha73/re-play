class CreateJoinTeamPlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :join_team_players do |t|
      t.references :team, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
