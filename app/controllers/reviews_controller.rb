class ReviewsController < ApplicationController
  def show
    @review = Review.find(params[:id])
  end

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    # @review.user = current_user

    if @review.save
      redirect_to review_path(@review), notice: 'Review was successfully submitted.'
    else
      render :new
    end
  end
  
  private 

  def review_params
    params.require(:review).permit(:description, :rating, :booking_id)
  end
end
