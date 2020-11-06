class Tournament < ApplicationRecord
  has_many :bookings
  has_many :teams, through: :bookings
  belongs_to :sport
  belongs_to :structure
  belongs_to :user #manager
  has_many :matchdays
  has_many :games, through: :matchdays

  def players_in_team
    players_in_team = []
    @teams = Tournament.teams.uniq
    @teams.each do |team|
      players_in_team << { team_id: team, players_count: self.bookings.where(team_id: team.id).size }
    end
    players_in_team
  end
end
