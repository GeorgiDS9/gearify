class BookingsController < ApplicationController
  def index
  @bookings = Booking.all
end

def create
  @booking = Booking.new(booking_params)
  @booking.user = current_user

    # authorize(@booking)

  if @booking.save
      redirect_to booking_path, notice: 'Booking was successfully created.'
  else
      render :new
  end
  end
end

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
