class Review < ApplicationRecord
  belongs_to :booking
  validates :description, :rating, :booking_id, presence: true
  validates :rating, :inclusion => { :in => 0..5 }
end
