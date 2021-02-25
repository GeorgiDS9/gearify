class ReviewsController < ApplicationController
  def show
    @review = Review.find(params[:id])
  end

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end


end
