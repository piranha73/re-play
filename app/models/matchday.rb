class Matchday < ApplicationRecord
  belongs_to :tournament
  has_many :games, dependent: :destroy
end
