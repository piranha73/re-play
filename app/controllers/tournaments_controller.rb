class TournamentsController < ApplicationController
  before_action :find_tournament, only: [:show, :edit, :destroy]

  def index
    @tournaments = Tournament.all
     @markers = @tournaments.geocoded.map do |tournament|
      {
        lat: tournament.latitude,
        lng: tournament.longitude
      }
    end
  end

  def show
    if @tournament.started
      render 'tournaments/show_started'
    else
      render 'tournaments/show'
    end
  end

  def generate_calendar
    @tournament = Tournament.find(params[:tournament_id])
    @tournament.started = true
    @tournament.save
    @tournament.structure.games_generator(@tournament)
    redirect_to tournament_path(@tournament)
  end

  def show_user_tournaments
    @tournaments = Tournament.where(user_id: current_user.id)
  end

  def new
    @tournament = Tournament.new
  end

  def create
    @tournament = Tournament.new(tournament_params)
    @tournament.user = current_user
    @tournament.sport_id = 1
    @tournament.structure_id = 1
    if @tournament.save
      redirect_to tournament_path(@tournament)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @tournament = Tournament.find(tournament_params)
    if @tournament.update(params[:tournament])
      redirect_to tournament_path(@tournament), notice: 'Tournament successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @tournament.destroy

    redirect_to tournament_path
  end

  private

  def find_tournament
    @tournament = Tournament.find(params[:id])
  end

  def tournament_params
    params.require(:tournament).permit(:name, :description, :location, :number_of_teams, :number_of_players_per_team, :price, :start_time, :end_time)
  end
end
