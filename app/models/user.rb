class User < ActiveRecord::Base
    has_many :tasks

    def initialize(name)
        @name = name 
    end
end