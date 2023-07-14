class Offer < ApplicationRecord
  belongs_to :user

  has_many :bookings

  validates :brand, presence: true
  validates :model, presence: true
  validates :fuel_mode, inclusion: { in: %w[gasoline diesel bio-diesel ethanol] }
  validates :horsepower, presence: true
  validates :color, presence: true
  validates :price_per_day, presence: true
end
