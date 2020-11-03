class Team < ApplicationRecord
  has_many :bookings
  has_many :join_team_players
end
