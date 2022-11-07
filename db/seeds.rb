puts "🌱 Seeding spices..."

# has_many venues, belongs_to recordlabel 
Artist.create(name: "jacknjill rock", albums: "stackinpacks", record_labels_id: 1)
Artist.create(name: "robertluy rap", albums: "paperpaper", record_labels_id: 2)
Artist.create(name: "loopin dub", albums: "hotinit", record_labels_id: 3)

# belongs_to artist
Venue.create(name: "Red Rocks", location: "Utah", price: 100 )
Venue.create(name: "Gulch Creek", location: "Washington", price: 80)
Venue.create(name: "Tree Beach", location: "California", price: 150)

# has_many artists- needs artist_id? 
RecordLabel.create(name: "gold plate records", record_labels_id: 1)
RecordLabel.create(name: "LSD Rock", record_labels_id: 2)
RecordLabel.create(name: "soft n swift llc", record_labels_id: 3)
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

puts "✅ Done seeding!"
