class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.references :booking, null: false, foreign_key: true
      t.references :join_team_players, null: false, foreign_key: true

      t.timestamps
    end
  end
end
