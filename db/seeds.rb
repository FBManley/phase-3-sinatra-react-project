puts "🌱 Seeding spices..."

record_label1 = RecordLabel.create(name: "gold plate records")
record_label2 = RecordLabel.create(name: "LSD Rock")
record_label3 = RecordLabel.create(name: "soft n swift llc")

# has_many venues, belongs_to recordlabel 
artist1 = Artist.create(name: "jacknjill rock", albums: "stackinpacks")
artist2 = Artist.create(name: "robertluy rap", albums: "paperpaper")
artist3 = Artist.create(name: "loopin dub", albums: "hotinit")

# belongs_to artist / venue needs artist_id and venue_id
record_label1.venues.create(name: "Gulch Creek", location: "Washington", price: 80, artist_id: artist2.id)
record_label1.venues.create(name: "Blue River", location: "California", price: 50, artist_id: artist2.id)
record_label1.venues.create(name: "Happy Valley", location: "Oregon", price: 100, artist_id: artist2.id)
record_label2.venues.create(name: "Sandy Beach", location: "Oregon", price: 200, artist_id: artist3.id)
record_label2.venues.create(name: "Tree Beach", location: "California", price: 50, artist_id: artist3.id)
record_label2.venues.create(name: "Mountain Lake", location: "Washington", price: 90, artist_id: artist3.id)
record_label3.venues.create(name: "Elk River", location: "Oregon", price: 50, artist_id: artist1.id)
record_label3.venues.create(name: "Hells Canyon", location: "Washington", price: 60, artist_id: artist1.id)
record_label3.venues.create(name: "Heavens Gate", location: "California", price: 100, artist_id: artist1.id)

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


