class Statistic < ApplicationRecord
  belongs_to :user
  belongs_to :game
  belongs_to :team
  belongs_to :action

  def self.team_action(team, action)
    self.where(team: team, action: action).size
  end

  def self.player_action(user, action)
    self.where(user: user, action: action).size
  end
end
