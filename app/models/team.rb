class Team < ApplicationRecord
  belongs_to :booking
  belongs_to :join_team_players
end
