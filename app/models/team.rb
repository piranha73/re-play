class Team < ApplicationRecord
  has_many :bookings
  has_many :tournaments, through: :bookings
  has_many :join_team_players
  has_many :users, through: :join_team_players

  def players_in_tournament(tournament)
    tournament.bookings.where(team: self).size
  end

  def enough_players?(tournament)
    players_in_tournament(tournament) >= tournament.number_of_players_per_team
  end
end
