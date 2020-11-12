require 'faker'

#Sport Seeds
Sport.create(name: 'Football')

#Structure Seeds
Structure.create(name: 'Type 1')

#User Seeds
# User.create(first_name: "Yassine", last_name: "Chaqroun", email: "yc@email.com", password: "123456", address: "Casablanca, Morocco")
# User.create(first_name: 'Michele', last_name: 'Comolli', email: 'mc@email.com', password: '123456', address: "Milan, Italy")
# User.create(first_name: 'Giacomo', last_name: 'Bonomelli', email: 'gb@email.com', password: '123456', address: "Milan, Italy")
# User.create(first_name: 'Mike', last_name: 'Tung', email: 'mt@email.com', password: '123456', address: "Milan, Italy")
# User.create(first_name: 'John', last_name: 'Smith', email: 'js@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Jake', last_name: 'Smith', email: 'jake@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Jay', last_name: 'Smith', email: 'jay@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Paul', last_name: 'Smith', email: 'ps@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Michael', last_name: 'Smith', email: 'ms@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Steve', last_name: 'Smith', email: 'ss@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Mary', last_name: 'Smith', email: 'mary@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Lena', last_name: 'Smith', email: 'ls@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Ines', last_name: 'Smith', email: 'is@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Abe', last_name: 'Smith', email: 'as@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Bob', last_name: 'Smith', email: 'bs@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Bill', last_name: 'Stevens', email: 'bill@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Mike', last_name: 'Stevens', email: 'mike@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Jane', last_name: 'Stevens', email: 'jane@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Chris', last_name: 'Stevens', email: 'chris@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Jean', last_name: 'Stevens', email: 'jean@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Paul', last_name: 'Stevens', email: 'paul@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Ines', last_name: 'Stevens', email: 'ines@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Adele', last_name: 'Stevens', email: 'adele@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Donald', last_name: 'Stevens', email: 'donald@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Barack', last_name: 'Obama', email: 'obama@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'George', last_name: 'Bush', email: 'bush@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Bill', last_name: 'Clinton', email: 'clinton@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Buffalo', last_name: 'Bill', email: 'bb@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Serena', last_name: 'Williams', email: 'sw@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Andy', last_name: 'Murray', email: 'am@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Roger', last_name: 'Federer', email: 'rf@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Rafael', last_name: 'Nadal', email: 'rn@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Max', last_name: 'Payne', email: 'maxp@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Michael', last_name: 'Jordan', email: 'michael@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Lebron', last_name: 'James', email: 'lj@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'David', last_name: 'August', email: 'da@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Nicolas', last_name: 'Jaar', email: 'nicolasjaar@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Solomun', last_name: 'Dimitri', email: 'solomun@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Bill', last_name: 'Burr', email: 'burr@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Leo', last_name: 'Messi', email: 'messi@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Christiano', last_name: 'Ronaldo', email: 'cr@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Didier', last_name: 'Deschamps', email: 'dd@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Drole', last_name: 'De Nom', email: 'ddn@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Antoine', last_name: 'De Caunnes', email: 'adc@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Led', last_name: 'Zepplin', email: 'lz@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Guns', last_name: 'Roses', email: 'groses@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Joe', last_name: 'Rogan', email: 'joerogan@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Edward', last_name: 'Snowden', email: 'edward@email.com', password: '123456', address: "Boston, USA")
# User.create(first_name: 'Post', last_name: 'Malone', email: 'postma@email.com', password: '123456', address: "Boston, USA")

User.create(first_name: "Yassine", last_name: "Chaqroun", email: "yc@email.com", password: "123456", address: "Casablanca, Morocco")
User.create(first_name: 'Michele', last_name: 'Comolli', email: 'mc@email.com', password: '123456', address: "Milan, Italy")
User.create(first_name: 'Giacomo', last_name: 'Bonomelli', email: 'gb@email.com', password: '123456', address: "Milan, Italy")
User.create(first_name: 'Mike', last_name: 'Tung', email: 'mt@email.com', password: '123456', address: "Milan, Italy")

76.times do |i|
  name = Faker::Sports::Football.player
  first_name = name.split.first
  last_name = name.split.last
  User.create(
    first_name: first_name,
    last_name: last_name,
    email: "#{Faker::Internet.email(name: first_name)}",
    password: "123456",
    address: "Milan, Italy"
  )
end

p "created #{User.all.count} users with ugly names, especially Michele"

#Team Seeds
20.times do |i|
  Team.create(name: Faker::Team.name, logo: "team_logos/#{i + 1}.png")
end

#Join Team Player Seeds
@user_id = 1

def create_join_team_player(team)
  JoinTeamPlayer.create(user_id: @user_id, team: team)  
  if @user_id == User.all.count
    @user_id = 1
  else
    @user_id += 1
  end
end

Team.limit(10).each_with_index do |team, index|
  5.times do |i|
    create_join_team_player(team)
  end
end

Team.limit(5).offset(10).each do |team|
  8.times do |i|
    create_join_team_player(team)
  end
end

Team.limit(5).offset(15).each do |team|
  4.times do |i|
    create_join_team_player(team)
  end
end

p "created #{Team.all.count} teams. Below is the number of players per team:"
Team.all.map { |team| p "#{team.name} - #{team.users.count} players" }

#Tournament Seeds
Tournament.create(name: "Matadores", location: "Madrid, Spain", description: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true), number_of_teams: 11, number_of_players_per_team: 4, price: 170, sport_id: 1, user_id: 1, structure_id: 1, start_time: Faker::Date.forward(days: 55) , end_time: Faker::Date.forward(days: 60))
Tournament.create(name: "Alla Milanese", location: "Milan, Italy", description: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true), number_of_teams: 10, number_of_players_per_team: 4, price: 160, sport_id: 1, user_id: 2, structure_id: 1, start_time: Faker::Date.forward(days: 2) , end_time: Faker::Date.forward(days: 5))
Tournament.create(name: "Coupe Trezeguet", location: "Paris, France", description: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true), number_of_teams: 9, number_of_players_per_team: 4, price: 150, sport_id: 1, user_id: 3, structure_id: 1, start_time: Faker::Date.forward(days: 7) , end_time: Faker::Date.forward(days: 11))
Tournament.create(name: "London Cup", location: "London, UK", description: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true), number_of_teams: 8, number_of_players_per_team: 4, price: 120, sport_id: 1, user_id: 4, structure_id: 1,start_time: Faker::Date.forward(days: 3) , end_time: Faker::Date.forward(days: 6))
Tournament.create(name: "Fuβall League", location: "Berlin, Germany", description: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true), number_of_teams: 12, number_of_players_per_team: 4, price: 200, sport_id: 1, user_id: 1, structure_id: 1, start_time: Faker::Date.forward(days: 23) , end_time: Faker::Date.forward(days: 27))

users_non_managers = User.all.offset(4)
users_with_double_teams = users_non_managers.filter { |u| u.teams.count > 1 }
users_with_single_teams = users_non_managers.filter { |u| u.teams.count == 1 }
# #Booking Seeds
# per ogni torneo 8-12 teams, senza doppi users

@user_id = users_non_managers.first.id
@teams_of_at_least_5 = Team.first(15)
@teams_of_at_least_5_index = 0
@teams_of_4 = Team.limit(5).offset(15)

def create_booking(tournament)
  team = @teams_of_at_least_5[@teams_of_at_least_5_index]
  team.users.limit(5).each do |user|
    Booking.create(user: user, team: team, tournament: tournament)
  end
  if @teams_of_at_least_5_index == @teams_of_at_least_5.size - 1
    @teams_of_at_least_5_index = 0
  else
    @teams_of_at_least_5_index += 1
  end
end

Tournament.all.each_with_index do |tournament, index|
  tournament.number_of_teams.times do |i|
    create_booking(tournament)
  end
  @teams_of_at_least_5_index = 0
end

puts "Created #{Tournament.all.count} tournaments, with the following teams and players:"
Tournament.all.each do |tournament|
  puts "####### TOURNAMENT: #{tournament.name} - n° teams --> #{tournament.teams.uniq.size}###########"
  puts "-------------------------------teams-------------------------------"
  tournament.teams.uniq.each do |team|
    players = tournament.bookings.where(team: team).map { |booking| booking.user }.uniq
    puts "#{team.name} - #{players.size} unique players subscribed"
    puts "....................."
  end
  puts "-------------------------------------------------------------------"
  puts " "
end

puts "checking if tornaments have double users...."
Tournament.all.each do |tournament|
  users_in_tournament = []
  tournament.teams.uniq.each do |team|
    users_in_tournament << tournament.bookings.where(team: team).map { |booking| booking.user }.uniq
  end
  message = users_in_tournament.flatten.size == users_in_tournament.flatten.uniq.size ? "NO DOUBLE USERS" : "DOUBLE USERS FOUND"
  puts "#{tournament.name} - #{message}"
end

puts "checking if tornaments have expected number of users...."
Tournament.all.each do |tournament|
  users_in_tournament = []
  tournament.teams.uniq.each do |team|
    users_in_tournament << tournament.bookings.where(team: team).map { |booking| booking.user }.uniq
  end
  message = (tournament.number_of_teams * 5) == users_in_tournament.flatten.uniq.size ? "YES" : "NOPE"
  puts "#{tournament.name} - #{message} (#{tournament.number_of_teams * 5} / #{users_in_tournament.flatten.uniq.size})"
end


puts " "
# #Actions Seed
Action.create(name:'goal')
Action.create(name:'assist')
Action.create(name:'foul')
Action.create(name:'save')

p "created #{Action.all.count} actions:"
Action.all.each do |action| p action.name end
