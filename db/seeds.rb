puts "🌱 Seeding spices..."

# Seed your database here
def up
    5.times do |i|
      User.create(name: "", age: "")
      User.create(name: "Jim", age: "12")
      User.create(name: "Bob", age: "43")
      User.create(name: "Sesh", age: "77")
      User.create(name: "Dale", age: "90")
    end
end



puts "✅ Done seeding!"
