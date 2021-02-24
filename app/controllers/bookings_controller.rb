class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @gear = Gear.find(params[:gear_id])
    @booking = Booking.new
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :user_id, :gear_id)
  end
end
