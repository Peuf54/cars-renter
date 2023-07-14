class Offer < ApplicationRecord
  belongs_to :user

  has_many :bookings

  has_one_attached :photo

  validates :brand, presence: true
  validates :model, presence: true
  validates :fuel_mode, inclusion: { in: %w[gasoline diesel bio-diesel ethanol] }
  validates :horsepower, presence: true, numericality: { greater_than: 0 }
  validates :color, presence: true
  validates :price_per_day, presence: true, numericality: { greater_than: 0 }
end
