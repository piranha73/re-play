class BookingsController < ApplicationController

  before_action :find_booking, only: [:show,:destroy]


  def new
    @tournament = Tournament.find(params[:tournament_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user
    @booking.tournament_id = params["tournament_id"]
    @booking.team_id = params["team_id"]
    if @booking.save
      redirect_to tournament_booking_path(@booking.tournament_id,@booking)
    else
      redirect_to new_tournament_booking_path(@booking)
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
