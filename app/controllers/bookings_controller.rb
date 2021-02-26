class BookingsController < ApplicationController
  def new
    @gear = Gear.find(params[:gear_id])
    @booking = Booking.new
    unless current_user.can_make_a_booking_for?(@gear)
      redirect_to gears_path, notice: "You cannot booking your own gear"
    end
  end

  def create
    @gear = Gear.find(params[:gear_id])
    if current_user.can_make_a_booking_for?(@gear)
      @booking = Booking.new(booking_params)
      @booking.gear = @gear
      @booking.user = current_user

      if @booking.save
        redirect_to gear_path(@gear), notice: 'Booking was successfully created.'
      else
        render :new
      end
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to profile_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :gear_id)
  end
end
