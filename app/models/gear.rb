class Gear < ApplicationRecord
  belongs_to :user
  validates :price, :description, :category, :name, presence: true;
end
