class Product < ApplicationRecord
    CREATE TABLE products (
        id INTEGER PRIMARY KEY,
        name TEXT,
        brand TEXT, 
        food_group TEXT
      )
      SQL
    DB[:conn].execute(sql)
    # create
    user = TABLE.create(name: "puffs", brand: "Meta", food_group: "poop")
    # read
    users = User.all

end