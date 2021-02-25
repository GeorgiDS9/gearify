class UsersController < ApplicationController
  def profile
    @user = current_user
    @my_gears = @user.gears
    @personal_bookings = @user.bookings
  end
end
