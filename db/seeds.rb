puts "🌱 Seeding spices..."
# SEED DATA NEEDS FIXED WITH CORRECT IDS

# has_many venues, belongs_to recordlabel 
Artist.create(name: "jacknjill rock", albums: "stackinpacks")
Artist.create(name: "robertluy rap", albums: "paperpaper")
Artist.create(name: "loopin dub", albums: "hotinit")

# belongs_to artist
Venue.create(name: "Red Rocks", location: "Utah", price: 100 )
Venue.create(name: "Gulch Creek", location: "Washington", price: 80)
Venue.create(name: "Tree Beach", location: "California", price: 150)

# has_many artists- needs artist_id? 
RecordLabel.create(name: "gold plate records")
RecordLabel.create(name: "LSD Rock")
RecordLabel.create(name: "soft n swift llc")
# Seed your database here



# run $ bundle exec rake db:create_migration NAME=description_of_change
# run $ bundle exec rake db:migrate
# run $ bundle exec rake db:migrate:status
# run $ 
# run $ 
# user_data.each{|a| User.create(a)}
# occupant_data.each{|b| Occupant.create(b)}
# User.create(name: "Jake", age: "99")
# User.create(name: "Bob", age: "23")
# User.create(name: "Rachel", age: "54")
# test out from : phase-3-active-record-associations-one-to-many
#50.times do
  # create a game with random data
#   game = Game.create(
#     title: Faker::Game.title,
#     genre: Faker::Game.genre,
#     platform: Faker::Game.platform,
#     price: rand(0..60) # random number between 0 and 60
#   )

#   # create between 1 and 5 reviews for each game
#   rand(1..5).times do
#     Review.create(
#       score: rand(1..10),
#       comment: Faker::Lorem.sentence,
#       game_id: game.id # use the ID (primary key) of the game as the foreign key
#     )
#   end

end

puts "✅ Done seeding!"
