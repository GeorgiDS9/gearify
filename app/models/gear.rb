class Gear < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user
  validates :price, :description, :category, :name, presence: true;
  has_many :reviews, through: :bookings
  CATEGORIES = [
    "cycling",
    "mountain & hiking",
    "water sports",
    "snow sports",
    "motor sports",
    "extreme sports",
    "urban sports",
    "club & ball sports",
    "team sports",
    "martial arts",
    "athletics",
    "other"
  ]

  def unavailable_dates
    bookings.pluck(:start_time, :end_time).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
