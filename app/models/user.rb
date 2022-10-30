class User < ActiveRecord::Base
# Model names are singular, because an instantiated model represents a single data record.
# defines data structure -> updates View
#  interacts w the database
    has_many :tasks
    attr_accessor :name, age:, breed:, :id
    
    def initialize(name:, age:, breed:, id: nil)
        @name = name
        @id = id 
        @age = age
        @breed = breed
    end

    def self.create_table
        sql =  <<-SQL
          CREATE TABLE IF NOT EXISTS users (
            id INTEGER PRIMARY KEY,
            name TEXT,
            age INTEGER, 
            breed TEXT
          )
          SQL
        DB[:conn].execute(sql)
    end

    def save
        sql = <<-SQL
          INSERT INTO users (name, age, breed)
          VALUES (?, ?)
        SQL
    
        DB[:conn].execute(sql, self.name, self.album)
    
      end



# The new method could make available to the view a @user instance variable by creating a new User:
    def new 
        @user.new 
    end

    def save 
        @user.save
    end

    # def self.create_table
    # end
end
# NOTES:
# When building an ORM to connect our Ruby program to a database, we equate a class with a database table and the instances that the class produces to rows in that table.