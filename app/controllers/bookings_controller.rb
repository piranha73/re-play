class BookingsController < ApplicationController

  before_action :find_booking, only: [:show,:destroy]


  def new
    @tournament = Tournament.find(params[:tournament_id])
    @booking = Booking.new
  end

  def create
    @team = Team.find(params[:booking][:team_id])
    @tournament = Tournament.find(params[:tournament_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.tournament = @tournament
    @booking.team = @team
    if @booking.save
      redirect_to tournaments_path
      flash[:notice] = "Tournament book"
    else
      render 'new'
      flash[:notice] = "Booking not possible"
    end
  end

  def show
  end

  def destroy
    @booking.destroy
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:requested_booking_fields)
  end
end
