class Tournament < ApplicationRecord
  has_many :bookings
  belongs_to :sport
  belongs_to :structure
  belongs_to :optional
  belongs_to :user
  has_many :teams, through: :bookings
end
