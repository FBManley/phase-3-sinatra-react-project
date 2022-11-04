require 'pry'
class Property < ActiveRecord::Base
    attr_accessor :building

    def initialize(building)
        @building = building 
    end

    prop1 = Property.new("North Building")
    
    

end
binding.pry