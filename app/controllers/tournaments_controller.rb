class TournamentsController < ApplicationController
  def index
    @tournaments = Tournament.all
  end

  def show
    @tournaments = Tournament.find(params[:id])
  end

  def new
    @tournament = Tournament.new
  end

  def create
    @tournament = Tournament.new(tournament_params)
    @tournament.save

    redirect_to tournament_path(@tournament)
  end

  def edit
    @tournament = Tournament.find(params[:id])
  end

  def update
    @tournament = Tournament.find(tournament_params)
    @tournament.update(params[:tournament])

    redirect_to tournament_path(@tournament)
  end

  def destroy
    @tournament = Tournament.find(params[:id])
    @tournament.destroy

    redirect_to tournament_path
  end

  private

  def tournament_params
    params.require(:tournament).permit(:name, :description, :location, :number_of_teams, :number_of_players_per_team, :price, :start_time, :end_time)
  end
end
