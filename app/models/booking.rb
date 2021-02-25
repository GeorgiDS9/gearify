class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :gear
  validates :start_time, :end_time, presence: true

  def calculate_price
    (self.end_time - self.start_time).to_i * gear.price
  end
end
