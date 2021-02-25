class ReviewsController < ApplicationController
  def show
    @review = Review.find(params[:id])
  end

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
    unless current_user.can_leave_a_review_for?(@booking)
      redirect_to gear_path(@booking.gear), notice: "You cannot leave a review for this"
    end
  end

  def create
    @booking = Booking.find(params[:booking_id])
    if current_user.can_leave_a_review_for?(@booking)
      @review = Review.new(review_params)
      @review.booking = @booking
      if @review.save
        redirect_to gear_path(@booking.gear), notice: 'Review was successfully submitted.'
      else
        render :new
      end
    end
  end
  
  private 

  def review_params
    params.require(:review).permit(:description, :rating, :booking_id)
  end
end
