# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Sport Seeds
Sport.create(name: 'Football')
Sport.create(name: 'Basketball')
Sport.create(name: 'Tennis')

#Structure Seeds
Structure.create(name: 'Type 1')

#Optional Subscription Field Seeds
#Optional.create(role: false, team: true, player_number: false)

#User Seeds
User.create(first_name: "Yassine", last_name: "Chaqroun", email: "yc@email.com", password: "123456", address: "Casablanca, Morocco")
User.create(first_name: 'Michele', last_name: 'Comolli', email: 'mc@email.com', password: '123456', address: "Milan, Italy")
User.create(first_name: 'Giacomo', last_name: 'Bonomelli', email: 'gb@email.com', password: '123456', address: "Milan, Italy")
User.create(first_name: 'Mike', last_name: 'Tung', email: 'mt@email.com', password: '123456', address: "Milan, Italy")
User.create(first_name: 'John', last_name: 'Smith', email: 'js@email.com', password: '123456', address: "Boston, USA")

#Team Seeds
Team.create(name: 'FC Barcelona')
Team.create(name: 'AC Milan')
Team.create(name: 'Real Madrid')
Team.create(name: 'PSG')

#Join Team Player Seeds
JoinTeamPlayer.create(user_id: 1, team_id: 1)
JoinTeamPlayer.create(user_id: 2, team_id: 1)
JoinTeamPlayer.create(user_id: 3, team_id: 1)
JoinTeamPlayer.create(user_id: 4, team_id: 1)

JoinTeamPlayer.create(user_id: 1, team_id: 2)
JoinTeamPlayer.create(user_id: 2, team_id: 2)
JoinTeamPlayer.create(user_id: 3, team_id: 4)
JoinTeamPlayer.create(user_id: 4, team_id: 4)

JoinTeamPlayer.create(user_id: 1, team_id: 3)
JoinTeamPlayer.create(user_id: 2, team_id: 3)
JoinTeamPlayer.create(user_id: 3, team_id: 3)
JoinTeamPlayer.create(user_id: 4, team_id: 3)

#Tournament Seeds
Tournament.create(name: "Champions League", location: "Madrid, Spain", description: "Great tournament!", number_of_teams: 5, number_of_players_per_team: 5, price: 1000, sport_id: 1, user_id: 1, structure_id: 1)
Tournament.create(name: "Europa League", location: "Milan, Italy", description: "Good tournament!", number_of_teams: 4, number_of_players_per_team: 2, price: 800, sport_id: 1, user_id: 2, structure_id: 1)
Tournament.create(name: "Players League", location: "Paris, France", description: "Nice tournament!", number_of_teams: 3, number_of_players_per_team: 3, price: 700, sport_id: 1, user_id: 3, structure_id: 1)
Tournament.create(name: "Cool League", location: "London, UK", description: "Cool tournament!", number_of_teams: 2, number_of_players_per_team: 5, price: 600, sport_id: 1, user_id: 4, structure_id: 1)
Tournament.create(name: "Pro League", location: "Berlin, Germany", description: "Well-organized tournament!", number_of_teams: 4, number_of_players_per_team: 1, price: 500, sport_id: 1, user_id: 1, structure_id: 1)

#Booking Seeds
Booking.create(user_id: 1, team_id: 1, tournament_id: 1)
Booking.create(user_id: 2, team_id: 1, tournament_id: 1)
Booking.create(user_id: 3, team_id: 1, tournament_id: 1)
Booking.create(user_id: 4, team_id: 1, tournament_id: 1)

Booking.create(user_id: 1, team_id: 2, tournament_id: 1)
Booking.create(user_id: 2, team_id: 2, tournament_id: 1)
Booking.create(user_id: 3, team_id: 4, tournament_id: 1)
Booking.create(user_id: 4, team_id: 4, tournament_id: 1)

Booking.create(user_id: 1, team_id: 3, tournament_id: 1)
Booking.create(user_id: 2, team_id: 3, tournament_id: 1)
Booking.create(user_id: 3, team_id: 3, tournament_id: 1)
Booking.create(user_id: 4, team_id: 3, tournament_id: 1)

Booking.create(user_id: 1, team_id: 1, tournament_id: 2)
Booking.create(user_id: 2, team_id: 1, tournament_id: 2)
Booking.create(user_id: 3, team_id: 1, tournament_id: 2)
Booking.create(user_id: 4, team_id: 1, tournament_id: 2)

Booking.create(user_id: 1, team_id: 2, tournament_id: 2)
Booking.create(user_id: 2, team_id: 2, tournament_id: 2)
Booking.create(user_id: 3, team_id: 4, tournament_id: 2)
Booking.create(user_id: 4, team_id: 4, tournament_id: 2)

Booking.create(user_id: 1, team_id: 3, tournament_id: 2)
Booking.create(user_id: 2, team_id: 3, tournament_id: 2)
Booking.create(user_id: 3, team_id: 3, tournament_id: 2)
Booking.create(user_id: 4, team_id: 3, tournament_id: 2)

Booking.create(user_id: 1, team_id: 1, tournament_id: 3)
Booking.create(user_id: 2, team_id: 1, tournament_id: 3)
Booking.create(user_id: 3, team_id: 1, tournament_id: 3)
Booking.create(user_id: 4, team_id: 1, tournament_id: 3)

Booking.create(user_id: 1, team_id: 2, tournament_id: 3)
Booking.create(user_id: 2, team_id: 2, tournament_id: 3)
Booking.create(user_id: 3, team_id: 4, tournament_id: 3)
Booking.create(user_id: 4, team_id: 4, tournament_id: 3)

Booking.create(user_id: 1, team_id: 3, tournament_id: 3)
Booking.create(user_id: 2, team_id: 3, tournament_id: 3)

