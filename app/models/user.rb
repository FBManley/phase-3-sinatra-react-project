class User < ActiveRecord::Base
# Model names are singular, because an instantiated model represents a single data record.
# defines data structure -> updates View
#  interacts w the database
    has_many :tasks
    # attr_accessor :name
    
    def initialize(name)
        @name = name
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