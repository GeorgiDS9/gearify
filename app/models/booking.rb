class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :gear
  has_many :reviews, dependent: :destroy

  validates :start_time, :end_time, presence: true, availability: true
  validate :end_time_after_start_time

  def calculate_price
    (self.end_time - self.start_time).to_i * gear.price
  end

  private

  def end_time_after_start_time
    return if end_time.blank? || start_time.blank?

    if end_time < start_time
      errors.add(:start_time, "must be after the start date")
    end
  end
end
