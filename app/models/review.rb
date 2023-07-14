class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :user

  validates :rate, presence: true, inclusion: { in: 0..5 }
end
