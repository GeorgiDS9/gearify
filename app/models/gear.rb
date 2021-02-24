class Gear < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user
  validates :price, :description, :category, :name, presence: true;

  CATEGORIES = ["biking", "hiking", "scuba", "skiing"]
end
