class User < ActiveRecord::Base
  #   def initialize(name, age, occupation)
  #       @name = name 
  #       @age = age
  #       @occupation = occupation
  #   end

  #   def self.create_table
  #     sql =  <<-SQL
  #       CREATE TABLE IF NOT EXISTS users (
  #         id INTEGER PRIMARY KEY,
  #         name TEXT,
  #         age INTEGER, 
  #         occupation TEXT
  #       )
  #       SQL
  #     DB[:conn].execute(sql)
  # end

  # def save
  #   sql = <<-SQL
  #     INSERT INTO users (name, age, occupation)
  #     VALUES (?, ?, ?)
  #   SQL
  #   DB[:conn].execute(sql, self.name, self.age, self.occupation)
  # end
end