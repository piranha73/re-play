require 'faker'

#Sport Seeds
Sport.create(name: 'Football')

#Structure Seeds
Structure.create(name: 'Type 1')

#User Seeds
User.create(first_name: "Yassine", last_name: "Chaqroun", email: "yc@email.com", password: "123456", address: "Casablanca, Morocco")
User.create(first_name: 'Michele', last_name: 'Comolli', email: 'mc@email.com', password: '123456', address: "Milan, Italy")
User.create(first_name: 'Giacomo', last_name: 'Bonomelli', email: 'gb@email.com', password: '123456', address: "Milan, Italy")
User.create(first_name: 'Mike', last_name: 'Tung', email: 'mt@email.com', password: '123456', address: "Milan, Italy")

76.times do |i|
  first_name = Faker::Name.first_name  
  last_name = Faker::Name.last_name
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
@user_id = 5

def create_join_team_player(team)
  JoinTeamPlayer.create(user_id: @user_id, team: team)  
  if @user_id == User.all.count
    @user_id = 5
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

puts "checking if tornament manager is not subscribed to the tournament...."
Tournament.all.each do |tournament|
  users_in_tournament = []
  tournament.teams.uniq.each do |team|
    users_in_tournament << tournament.bookings.where(team: team).map { |booking| booking.user }.uniq
  end
  message = users_in_tournament.flatten.uniq.include?(tournament.user) ? "subscribed" : "not subscribed"
  puts "#{tournament.name} - #{message}"
end

puts " "
# #Actions Seed
Action.create(name:'goal')
Action.create(name:'assist')
Action.create(name:'foul')
Action.create(name:'save')

p "created #{Action.all.count} actions:"
Action.all.each do |action| p action.name end
