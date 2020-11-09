class Team < ApplicationRecord
  has_many :bookings
  has_many :tournaments, through: :bookings
  has_many :join_team_players
  has_many :users, through: :join_team_players
  has_many :statistics

  def players_in_tournament(tournament)
    tournament.bookings.where(team: self).map do |booking|
      booking.user
    end
  end

  def enough_players?(tournament)
    players_in_tournament(tournament).size >= tournament.number_of_players_per_team
  end

  def action_in_game(action, game)
    self.statistics.where(game: game, action: action).size
  end
end
