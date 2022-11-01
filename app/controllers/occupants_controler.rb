class OccupantsController < ApplicationController
    get '/occupants' do 
        occupants = Occupant.all
        occupants.to_json
    end
end