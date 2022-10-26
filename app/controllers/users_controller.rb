class UsersController < ApplicationController
    # All users
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

    post '/users' do 
        binding.pry 
        user = User.create(
            name: params[:name],
            age: params[:age]
        )
        user.to_json 
    end

end