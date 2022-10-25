class UsersController < ApplicationController
    # Users Index Route
    get '/users' do
        users = User.all 
        users.to_json(include: :tasks)
    end

  # Users show route
    get '/users/:id' do
        user = User.find_by(id: params[:id])
        if user
            user.to_json(include: :tasks)
        else 
            "404 - User not found"
        end
    end

end