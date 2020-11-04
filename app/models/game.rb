class Game < ApplicationRecord
  belongs_to :matchday
  belongs_to :home_team, class_name: 'Team', foreign_key: 'home_team_id', required: true
  belongs_to :away_team, class_name: 'Team', foreign_key: 'away_team_id', required: true
end