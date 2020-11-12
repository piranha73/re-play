class GamesController < ApplicationController

  before_action :set_game

  def show
    @tournament = Tournament.find(params[:tournament_id])
    @home_team = @game.home_team
    @away_team = @game.away_team
    if @game.start_time.nil?
      render 'games/game_not_started'
    elsif @game.start_time && @game.end_time.nil?
      @statistic = Statistic.new
      render 'games/show'
    else
      render 'games/game_ended'
    end
  end

  def start
    @tournament = @game.matchday.tournament
    @game.update(start_time: DateTime.now)
    redirect_to tournament_game_path(@tournament, @game)
  end

  def finish
    @tournament = @game.matchday.tournament
    @game.update(end_time: DateTime.now)
    redirect_to tournament_game_path(@tournament)
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end
end
