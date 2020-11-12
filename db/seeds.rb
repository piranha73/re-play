# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

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
User.create(first_name: 'Jake', last_name: 'Smith', email: 'jake@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Jay', last_name: 'Smith', email: 'jay@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Paul', last_name: 'Smith', email: 'ps@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Michael', last_name: 'Smith', email: 'ms@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Steve', last_name: 'Smith', email: 'ss@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Mary', last_name: 'Smith', email: 'mary@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Lena', last_name: 'Smith', email: 'ls@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Ines', last_name: 'Smith', email: 'is@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Abe', last_name: 'Smith', email: 'as@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Bob', last_name: 'Smith', email: 'bs@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Bill', last_name: 'Stevens', email: 'bill@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Mike', last_name: 'Stevens', email: 'mike@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Jane', last_name: 'Stevens', email: 'jane@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Chris', last_name: 'Stevens', email: 'chris@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Jean', last_name: 'Stevens', email: 'jean@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Paul', last_name: 'Stevens', email: 'paul@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Ines', last_name: 'Stevens', email: 'ines@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Adele', last_name: 'Stevens', email: 'adele@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Donald', last_name: 'Stevens', email: 'donald@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Barack', last_name: 'Obama', email: 'obama@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'George', last_name: 'Bush', email: 'bush@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Bill', last_name: 'Clinton', email: 'clinton@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Buffalo', last_name: 'Bill', email: 'bb@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Serena', last_name: 'Williams', email: 'sw@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Andy', last_name: 'Murray', email: 'am@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Roger', last_name: 'Federer', email: 'rf@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Rafael', last_name: 'Nadal', email: 'rn@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Max', last_name: 'Payne', email: 'maxp@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Michael', last_name: 'Jordan', email: 'michael@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Lebron', last_name: 'James', email: 'lj@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'David', last_name: 'August', email: 'da@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Nicolas', last_name: 'Jaar', email: 'nicolasjaar@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Solomun', last_name: 'Dimitri', email: 'solomun@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Bill', last_name: 'Burr', email: 'burr@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Leo', last_name: 'Messi', email: 'messi@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Christiano', last_name: 'Ronaldo', email: 'cr@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Didier', last_name: 'Deschamps', email: 'dd@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Drole', last_name: 'De Nom', email: 'ddn@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Antoine', last_name: 'De Caunnes', email: 'adc@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Led', last_name: 'Zepplin', email: 'lz@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Guns', last_name: 'Roses', email: 'groses@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Joe', last_name: 'Rogan', email: 'joerogan@email.com', password: '123456', address: "Boston, USA")
User.create(first_name: 'Edward', last_name: 'Snowden', email: 'edward@email.com', password: '123456', address: "Boston, USA")

#Team Seeds
def create_team(name, index)
  Team.create(name: name, logo: "team_logos/#{index}.png")
end

teams = [Faker::Team.name, Faker::Team.name, Faker::Team.name, Faker::Team.name, Faker::Team.name, Faker::Team.name, Faker::Team.name, Faker::Team.name, Faker::Team.name, Faker::Team.name, Faker::Team.name, Faker::Team.name, Faker::Team.name, Faker::Team.name, Faker::Team.name, Faker::Team.name, Faker::Team.name]
teams.each_with_index do |team, index|
  create_team(team, index+1)
end


#Join Team Player Seeds

#Team 1: FC Barcelona 5/5
JoinTeamPlayer.create(user_id: 1, team_id: 1)
JoinTeamPlayer.create(user_id: 2, team_id: 1)
JoinTeamPlayer.create(user_id: 3, team_id: 1)
JoinTeamPlayer.create(user_id: 4, team_id: 1)
JoinTeamPlayer.create(user_id: 5, team_id: 1)

#Team 2: AC Milan 5/5
JoinTeamPlayer.create(user_id: 6, team_id: 2)
JoinTeamPlayer.create(user_id: 7, team_id: 2)
JoinTeamPlayer.create(user_id: 8, team_id: 2)
JoinTeamPlayer.create(user_id: 9, team_id: 2)
JoinTeamPlayer.create(user_id: 10, team_id: 2)

#Team 3: Real Madrid 5/5
JoinTeamPlayer.create(user_id: 11, team_id: 3)
JoinTeamPlayer.create(user_id: 12, team_id: 3)
JoinTeamPlayer.create(user_id: 13, team_id: 3)
JoinTeamPlayer.create(user_id: 14, team_id: 3)
JoinTeamPlayer.create(user_id: 15, team_id: 3)

#Team 4: PSG 5/5
JoinTeamPlayer.create(user_id: 16, team_id: 4)
JoinTeamPlayer.create(user_id: 17, team_id: 4)
JoinTeamPlayer.create(user_id: 18, team_id: 4)
JoinTeamPlayer.create(user_id: 19, team_id: 4)
JoinTeamPlayer.create(user_id: 20, team_id: 4)

#Team 5: Raja 5/5
JoinTeamPlayer.create(user_id: 21, team_id: 5)
JoinTeamPlayer.create(user_id: 22, team_id: 5)
JoinTeamPlayer.create(user_id: 23, team_id: 5)
JoinTeamPlayer.create(user_id: 24, team_id: 5)
JoinTeamPlayer.create(user_id: 25, team_id: 5)

#Team 6: Widad 6/5
JoinTeamPlayer.create(user_id: 26, team_id: 6)
JoinTeamPlayer.create(user_id: 27, team_id: 6)
JoinTeamPlayer.create(user_id: 28, team_id: 6)
JoinTeamPlayer.create(user_id: 29, team_id: 6)
JoinTeamPlayer.create(user_id: 30, team_id: 6)
JoinTeamPlayer.create(user_id: 31, team_id: 6)

#Team 7: Chelsea 7/5
JoinTeamPlayer.create(user_id: 32, team_id: 7)
JoinTeamPlayer.create(user_id: 33, team_id: 7)
JoinTeamPlayer.create(user_id: 34, team_id: 7)
JoinTeamPlayer.create(user_id: 35, team_id: 7)
JoinTeamPlayer.create(user_id: 36, team_id: 7)
JoinTeamPlayer.create(user_id: 37, team_id: 7)
JoinTeamPlayer.create(user_id: 38, team_id: 7)

#Team 8: Manchester United 8/5
JoinTeamPlayer.create(user_id: 39, team_id: 8)
JoinTeamPlayer.create(user_id: 40, team_id: 8)
JoinTeamPlayer.create(user_id: 41, team_id: 8)
JoinTeamPlayer.create(user_id: 42, team_id: 8)
JoinTeamPlayer.create(user_id: 43, team_id: 8)
JoinTeamPlayer.create(user_id: 44, team_id: 8)
JoinTeamPlayer.create(user_id: 45, team_id: 8)
JoinTeamPlayer.create(user_id: 46, team_id: 8)

#Team 9: Manchester City 9/5
JoinTeamPlayer.create(user_id: 47, team_id: 9)
JoinTeamPlayer.create(user_id: 1, team_id: 9)
JoinTeamPlayer.create(user_id: 6, team_id: 9)
JoinTeamPlayer.create(user_id: 11, team_id: 9)
JoinTeamPlayer.create(user_id: 16, team_id: 9)
JoinTeamPlayer.create(user_id: 21, team_id: 9)
JoinTeamPlayer.create(user_id: 26, team_id: 9)
JoinTeamPlayer.create(user_id: 32, team_id: 9)
JoinTeamPlayer.create(user_id: 39, team_id: 9)

#Team 10: Olympique Marseille 4/5
JoinTeamPlayer.create(user_id: 2, team_id: 10)
JoinTeamPlayer.create(user_id: 7, team_id: 10)
JoinTeamPlayer.create(user_id: 12, team_id: 10)
JoinTeamPlayer.create(user_id: 17, team_id: 10)

#Team 11: Borussia Dortmund 4/5
JoinTeamPlayer.create(user_id: 3, team_id: 11)
JoinTeamPlayer.create(user_id: 8, team_id: 11)
JoinTeamPlayer.create(user_id: 13, team_id: 11)
JoinTeamPlayer.create(user_id: 18, team_id: 11)

#Team 12: Lakers 3/5
JoinTeamPlayer.create(user_id: 4  , team_id: 12)
JoinTeamPlayer.create(user_id: 9, team_id: 12)
JoinTeamPlayer.create(user_id: 14, team_id: 12)

#Team 13: Miami Heat 3/5
JoinTeamPlayer.create(user_id: 5, team_id: 13)
JoinTeamPlayer.create(user_id: 10, team_id: 13)
JoinTeamPlayer.create(user_id: 15, team_id: 13)

#Tournament Seeds
Tournament.create(name: "Champions League", location: "Madrid, Spain", description: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true), number_of_teams: 5, number_of_players_per_team: 5, price: 1000, sport_id: 1, user_id: 1, structure_id: 1, start_time: Faker::Date.forward(days: 55) , end_time: Faker::Date.forward(days: 60))
Tournament.create(name: "Europa League", location: "Milan, Italy", description: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true), number_of_teams: 4, number_of_players_per_team: 2, price: 800, sport_id: 1, user_id: 2, structure_id: 1, start_time: Faker::Date.forward(days: 2) , end_time: Faker::Date.forward(days: 5))
Tournament.create(name: "Players League", location: "Paris, France", description: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true), number_of_teams: 3, number_of_players_per_team: 3, price: 700, sport_id: 1, user_id: 3, structure_id: 1, start_time: Faker::Date.forward(days: 7) , end_time: Faker::Date.forward(days: 11))
Tournament.create(name: "Cool League", location: "London, UK", description: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true), number_of_teams: 7, number_of_players_per_team: 5, price: 600, sport_id: 1, user_id: 4, structure_id: 1,start_time: Faker::Date.forward(days: 3) , end_time: Faker::Date.forward(days: 6))
Tournament.create(name: "Pro League", location: "Berlin, Germany", description: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true), number_of_teams: 8, number_of_players_per_team: 2, price: 500, sport_id: 1, user_id: 1, structure_id: 1, start_time: Faker::Date.forward(days: 23) , end_time: Faker::Date.forward(days: 27))

#Booking Seeds
Booking.create(user_id: 1, team_id: 1, tournament_id: 1)
Booking.create(user_id: 2, team_id: 1, tournament_id: 1)
Booking.create(user_id: 3, team_id: 1, tournament_id: 1)
Booking.create(user_id: 4, team_id: 1, tournament_id: 1)

Booking.create(user_id: 5, team_id: 2, tournament_id: 1)
Booking.create(user_id: 6, team_id: 2, tournament_id: 1)
Booking.create(user_id: 7, team_id: 2, tournament_id: 1)
Booking.create(user_id: 8, team_id: 2, tournament_id: 1)

Booking.create(user_id: 9, team_id: 3, tournament_id: 1)
Booking.create(user_id: 10, team_id: 3, tournament_id: 1)
Booking.create(user_id: 11, team_id: 3, tournament_id: 1)
Booking.create(user_id: 12, team_id: 3, tournament_id: 1)

Booking.create(user_id: 13, team_id: 4, tournament_id: 1)
Booking.create(user_id: 14, team_id: 4, tournament_id: 1)
Booking.create(user_id: 15, team_id: 4, tournament_id: 1)
Booking.create(user_id: 16, team_id: 4, tournament_id: 1)

Booking.create(user_id: 17, team_id: 5, tournament_id: 2)
Booking.create(user_id: 18, team_id: 5, tournament_id: 2)
Booking.create(user_id: 19, team_id: 6, tournament_id: 2)
Booking.create(user_id: 20, team_id: 6, tournament_id: 2)

Booking.create(user_id: 21, team_id: 7, tournament_id: 2)
Booking.create(user_id: 22, team_id: 7, tournament_id: 2)
Booking.create(user_id: 23, team_id: 8, tournament_id: 2)
Booking.create(user_id: 24, team_id: 8, tournament_id: 2)

Booking.create(user_id: 25, team_id: 9, tournament_id: 3)
Booking.create(user_id: 26, team_id: 9, tournament_id: 3)
Booking.create(user_id: 27, team_id: 9, tournament_id: 3)

Booking.create(user_id: 28, team_id: 10, tournament_id: 3)
Booking.create(user_id: 29, team_id: 10, tournament_id: 3)
Booking.create(user_id: 30, team_id: 10, tournament_id: 3)

Booking.create(user_id: 31, team_id: 11, tournament_id: 3)
Booking.create(user_id: 32, team_id: 11, tournament_id: 3)
Booking.create(user_id: 33, team_id: 11, tournament_id: 3)

Booking.create(user_id: 34, team_id: 12, tournament_id: 4)
Booking.create(user_id: 35, team_id: 12, tournament_id: 4)
Booking.create(user_id: 36, team_id: 12, tournament_id: 4)
Booking.create(user_id: 37, team_id: 12, tournament_id: 4)
Booking.create(user_id: 38, team_id: 12, tournament_id: 4)

Booking.create(user_id: 39, team_id: 13, tournament_id: 4)
Booking.create(user_id: 40, team_id: 13, tournament_id: 4)
Booking.create(user_id: 41, team_id: 13, tournament_id: 4)
Booking.create(user_id: 42, team_id: 13, tournament_id: 4)
Booking.create(user_id: 43, team_id: 13, tournament_id: 4)

Booking.create(user_id: 44, team_id: 14, tournament_id: 5)

Booking.create(user_id: 45, team_id: 15, tournament_id: 5)
Booking.create(user_id: 46, team_id: 16, tournament_id: 5)
Booking.create(user_id: 47, team_id: 17, tournament_id: 5)

#Actions Seed
Action.create(name:'goal')
Action.create(name:'assist')
Action.create(name:'foul')
Action.create(name:'save')
