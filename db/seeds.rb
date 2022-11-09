puts "🌱 Seeding spices..."

r1 = RecordLabel.create(name: "gold plate records")
r2 = RecordLabel.create(name: "LSD Rock")
r3 = RecordLabel.create(name: "soft n swift llc")

# has_many venues, belongs_to recordlabel 
a1 = Artist.create(name: "jacknjill rock", albums: "stackinpacks", record_label_id: r1.id)
a2 = Artist.create(name: "robertluy rap", albums: "paperpaper", record_label_id: r2.id)
a3 = Artist.create(name: "loopin dub", albums: "hotinit", record_label_id: r3.id)

# belongs_to artist
Venue.create(name: "Red Rocks", location: "Utah", price: 100, artist_id: a1.id)
Venue.create(name: "Gulch Creek", location: "Washington", price: 80, artist_id: a2.id)
Venue.create(name: "Tree Beach", location: "California", price: 150, artist_id: a3.id)


puts "✅ Done seeding!"

# run $ bundle exec rake db:create_migration NAME=description_of_change
# run $ bundle exec rake db:migrate
# run $ bundle exec rake db:migrate:status
# run $ 
# run $ 
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


