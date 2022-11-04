require 'pry'
class Property < ActiveRecord::Base
    attr_accessor :building
    
    def initialize(building)
        @building = building 
    end

    prop1 = Property.create(:building => "North Building")
    
    puts "test"

    binding.pry
end
