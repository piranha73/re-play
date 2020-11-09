class GamesController < ApplicationController
  def show
    @tournament = Tournament.find(params[:tournament_id])
    @game = Game.find(params[:id])
    @home_team = @game.home_team
    @away_team = @game.away_team
    @statistic = Statistic.new
  end
end
