class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :gear
  validates :start_time, :end_time, presence: true
end
