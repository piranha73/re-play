class Tournament < ApplicationRecord
  has_many :bookings
  has_many :teams, through: :bookings
  belongs_to :sport
  belongs_to :structure
  belongs_to :user #manager
  has_many :matchdays
  has_many :games, through: :matchdays
  geocoded_by :location
  after_validation :geocode

  def score(team)
    score = 0
    games.where(home_team: team).or(games.where(away_team: team)).each do |game|
      score += game.score(team) if game.is_started?
    end
    return score
  end

  def ranking
    ranking = []
    teams = self.teams.uniq
    teams.each do |team|
      ranking << [team, score(team)]
    end
    return ranking.sort_by { |array| -array[1] }
  end
end
