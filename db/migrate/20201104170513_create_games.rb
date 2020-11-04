class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.references :home_team, null: false, foreign_key: {to_table: :teams}
      t.references :away_team, null: false, foreign_key: {to_table: :teams}
      t.references :matchday, null: false, foreign_key: true

      t.timestamps
    end
  end
end
