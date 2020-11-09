class Statistic < ApplicationRecord
  belongs_to :user
  belongs_to :game
  belongs_to :team
  belongs_to :action
end
