# require 'pry'
class Occupant < ActiveRecord::Base
    # making these variables setters and getters?
    attr_accessor :name, :age, :occupation, :income
    # @@ class variables - one persistant value. 
    # @ instance variables
    @@occupant_count = 0
    # initialize object 
    def initialize(name:, age:, occupation:, income:)
        @name = name insance variable 
        @age = age 
        @occupation = occupation 
        @income = income 
        # @@all << self 
    end

    # def self.count 
    #     @@occupant_count
    # end

    # create object
    occ1 = Occupant.new("John", "22", "bowler", "456")
    occ2 = Occupant.new("Big", 34, "janitor", 98876)

    # call methods
    
    binding.pry
    # def all 
    #     # instance method -> doesnt have self
    # end
    # def Car.all.each d |car|
    #     # class method -> class method has self
    #     # puts car.model
    # end
    
    # def self.all 
    #     self.all = occupant.all 
    #     #  // reference to the same thing
    #     @@all
    # end
    # def self.all 
    #     # class getter
    #     @@all
    # end
    # def self.all 
    #     # standard class method. class method is alwats self.
    # end
    # new is unsaved (Car.new)
    #create is saved (Car.create)
    # objects can have actions or properties. will never be equal to a string
    # def save
    #     @@all << self
    # end
    # def self.create(color:,  year:, make:, model:)
    #     # create a new instance
    #     car = self.new(color,  year: year, make: make, model: model)
    #     # save the instance
    #     @@all << car 
    #     # OR car.save
    #     # return the instance (chain code)
    #     car
    #     # tap - take an object and put in into a block and return the object.
    #     self.new(color,  year: year, make: make, model: model).tap {|obj| obj.save}
    # end
    
    # Car.all.each do |car|
    #     # puts car.models
    # end
    # Car.print_car_models
    # buildin
    # def self.print_car_models 
    #     all.each do |car|
    #         puts car.model
    #     end
    # end
    # self is always implied unless told otherwise
    # ///////////

    # underneath the class and run ruby and that path to that file
    # or can run ruby replit

    # def self.create_table
    #     sql =  <<-SQL
    #       CREATE TABLE IF NOT EXISTS occupants (
    #         id INTEGER PRIMARY KEY,
    #         name TEXT,
    #         age INTEGER, 
    #         occupation TEXT,
    #         income INTEGER
    #       )
    #       SQL
    #     DB[:conn].execute(sql)
    # end

    # def save
    #     sql = <<-SQL
    #       INSERT INTO occupants (name, age, occupation, income)
    #       VALUES (?, ?, ?, ?)
    #     SQL
    #     DB[:conn].execute(sql, self.name, self.age, self.occupation, self.income)
    #   end
    # name is getter method .. use when not in instance to reference specific instance
    # name = is the setter method
    # put pry in each method and call self while in it, to see what you have access in that mathed. 
    # setters and getters should not be exposed to outside what you need to get done. 
end