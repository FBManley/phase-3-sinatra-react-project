puts "🌱 Seeding spices..."

# Seed your database here
# user_data = [
#     {
#         name:"Jake",
#         age:"100",
#         occupation:"fisher"
#     },
#     {
#         name:"kole",
#         age:"34",
#         occupation:"fixer"
#     },
#     {
#         name:"Sam",
#         age:"90",
#         occupation:"guard"
#     }
# ]
# occupant_data = [
#     {
#         name:"Jake",
#         age:"100",
#         occupation:"fisher",
#         income: "0"
#     },
#     {
#         name:"kole",
#         age:"34",
#         occupation:"fixer",
#         income: "6000"
#     },
#     {
#         name:"Sam",
#         age:"90",
#         occupation:"guard",
#         income: "6789"
#     }
# ]
# owner_data = [
#     {
#         name:"Jake",
#         age:"100",
#         occupation:"fisher"
#     },
#     {
#         name:"kole",
#         age:"34",
#         occupation:"fixer"
#     },
#     {
#         name:"Sam",
#         age:"90",
#         occupation:"guard"
#     }
# ]
# Owner.create(name: "Melissa", age: "9888", occupation: "yasman")
Artist.create(name: "jacknjill rock", albums: "stackinpacks")
Artist.create(name: "robertluy rap", albums: "paperpaper")
Artist.create(name: "loopin dub", albums: "hotinit")

Venue.create(name: "Red Rocks", location: "Utah", price: 100)
Venue.create(name: "Gulch Creek", location: "Washington", price: 80)
Venue.create(name: "Tree Beach", location: "California", price: 150)

RecordLabel.create(name: "gold plate records")
RecordLabel.create(name: "LSD Rock")
RecordLabel.create(name: "soft n swift llc")

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
