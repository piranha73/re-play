class TournamentsController < ApplicationController
  before_action :find_tournament, only: [:show, :edit, :destroy]

  def index

    if params.has_key?(:search)
      start_time = Date.parse(params["search"]["start_time"])
      end_time = Date.parse(params["search"]["end_time"])
      address = params["search"]["address"].split(",").first
      @tournaments = Tournament.where(['start_time >= ? AND end_time >= ?', start_time, Date.today])
      .where("location like ?",  "%#{address}%")

    else

      @tournaments = Tournament.all

    end


    @markers = @tournaments.geocoded.map do |tournament|
      {
        lat: tournament.latitude,
        lng: tournament.longitude
      }
    end

  end

  def show
    @markers =
      [{
        lat: @tournament.latitude,
        lng: @tournament.longitude
      }]
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
      redirect_to tournament_share_path(@tournament)
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

  def type_form_fetch

      @tournaments = Tournament.all
    if params.has_key?(:form)

      json_parsed = get_api

      final_hash = json_parsed["items"].first["answers"]



      hash_t = {
        name: final_hash[0]["text"],
        description: final_hash[1]["text"],
        location: final_hash[2]["text"],
        number_of_teams: final_hash[3]["number"],
        number_of_players_per_team: final_hash[4]["number"],
        price: final_hash[5]["number"],
        start_time: Date.parse(final_hash[6]["date"]),
        end_time: Date.parse(final_hash[7]["date"])

      }

      new_tournament = Tournament.new(hash_t)
      new_tournament.user = current_user
      new_tournament.sport_id = 1
      new_tournament.structure_id = 1
      if new_tournament.save
        redirect_to tournament_path(new_tournament)
      else
        render 'new'
      end
    end

  def share
    @last_id = Tournament.last.id
  end

  private

  def get_api
    hash_new = Fetch.answers


    return hash_new
  end

  def find_tournament
    @tournament = Tournament.find(params[:id])
  end

  def tournament_params
    params.require(:tournament).permit(:name, :description, :location, :number_of_teams, :number_of_players_per_team, :price, :start_time, :end_time)
  end
end
