class CreateTournaments < ActiveRecord::Migration[6.0]
  def change
    create_table :tournaments do |t|
      t.string :true_booking_fields
      t.string :name
      t.string :location
      t.string :description
      t.integer :number_of_teams
      t.integer :number_of_players_per_team
      t.integer :price
      t.datetime :start_time
      t.datetime :end_time
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
