class Occupant < ActiveRecord::Base
    
    def initialize(name, age, occupation, income)
        @name = name
        @age = age 
        @occupation = occupation 
        @income = income 
    end

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
end