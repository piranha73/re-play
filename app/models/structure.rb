class Structure < ApplicationRecord
  has_many :tournaments

  def games_generator(tournament)
    # teams = ["team1","team2","team3","team4","team5"]
    teams = tournament.teams.uniq.pluck(:id)
    matchdays = RoundRobinTournament.schedule(teams)
    matchdays.each_with_index do |matchday, index|
      day = Matchday.create(
        number: index + 1,
        tournament: tournament
      )
      matchday.each_with_index do |game, index|
        if teams.length.odd?
          next if index == 0

          Game.create(
            home_team_id: game.first,
            away_team_id: game.last,
            matchday: day
          )
        else
          Game.create(
            home_team_id: game.first,
            away_team_id: game.last,
            matchday: day
          )
        end
      end
    end
  end
end
