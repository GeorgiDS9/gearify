class BookingsController < ApplicationController
  def new
    @gear = Gear.find(params[:gear_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @gear = Gear.find(params[:gear_id])
    @booking.gear = @gear
    @booking.user = current_user

    if @booking.save
      redirect_to gear_path(@gear), notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    # TODO : redirect to user profile page
    # redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :user_id, :gear_id)
  end
end
