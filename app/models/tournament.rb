class Tournament < ApplicationRecord
  has_many :bookings
  has_many :teams, through: :bookings
  belongs_to :sport
  belongs_to :structure
  belongs_to :user #manager
end
