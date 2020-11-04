class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :tournaments
  has_many :join_team_players
  has_many :teams, through: :join_team_players

  def player_tournaments
    player_tournaments = []
    self.bookings.each do |booking|
      player_tournaments << booking.tournament
    end
    player_tournaments
  end

  def player_teams
    player_teams = []
    self.teams.each do |team|
      player_teams << team
    end
    player_teams
  end
end
