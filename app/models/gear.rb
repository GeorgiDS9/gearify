class Gear < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user
  validates :price, :description, :category, :name, presence: true;

  CATEGORIES = ["biking", "hiking", "scuba", "skiing"]

  def unavailable_dates
    bookings.pluck(:start_time, :end_time).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
