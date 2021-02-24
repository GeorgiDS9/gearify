class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  private
  
  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :user_id, :gear_id)
  end

end
