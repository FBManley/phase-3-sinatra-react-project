puts "🌱 Seeding spices..."

# Seed your database here
user_data = [
    {
        name:"Jake",
        age:"100",
        occupation:"fisher"
    },
    {
        name:"kole",
        age:"34",
        occupation:"fixer"
    },
    {
        name:"Sam",
        age:"90",
        occupation:"guard"
    }
]
occupant_data = [
    {
        name:"Jake",
        age:"100",
        occupation:"fisher",
        income: "0"
    },
    {
        name:"kole",
        age:"34",
        occupation:"fixer",
        income: "6000"
    },
    {
        name:"Sam",
        age:"90",
        occupation:"guard",
        income: "6789"
    }
]
owner_data = [
    {
        name:"Jake",
        age:"100",
        occupation:"fisher"
    },
    {
        name:"kole",
        age:"34",
        occupation:"fixer"
    },
    {
        name:"Sam",
        age:"90",
        occupation:"guard"
    }
]
Owner.create(name: "Melissa", age: "9888", occupation: "yasman")
# user_data.each{|a| User.create(a)}
# occupant_data.each{|b| Occupant.create(b)}
# User.create(name: "Jake", age: "99")
# User.create(name: "Bob", age: "23")
# User.create(name: "Rachel", age: "54")

puts "✅ Done seeding!"
