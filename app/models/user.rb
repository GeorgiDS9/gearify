class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :gears, dependent: :destroy
  has_many :bookings, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



  def can_leave_a_review_for?(booking)
    self == booking.user
  end

  def can_make_a_booking_for?(gear)
    self != gear.user
  end
end
