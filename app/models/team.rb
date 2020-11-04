class Team < ApplicationRecord
  has_many :bookings
  has_many :tournaments, through: :bookings
  has_many :join_team_players
  has_many :users, through: :join_team_players
end
