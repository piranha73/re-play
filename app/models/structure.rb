class Structure < ApplicationRecord
  has_many :tournaments

  def games_generator(tournament)
    teams = tournament.teams.uniq.pluck(:id)
    matchdays = RoundRobinTournament.schedule(teams)
    matchdays.each_with_index do |matchday, index|
      matchday.each do |game|
        next if matchday.index(game).zero? && teams.length.odd?

        create_game(game, create_day(index, tournament))
      end
    end
  end

  private

  def create_day(index, tournament)
    Matchday.create(
      number: index + 1,
      tournament: tournament
    )
  end

  def create_game(game, day)
    Game.create(
      home_team_id: game.first,
      away_team_id: game.last,
      matchday: day
    )
  end
end
