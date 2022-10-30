class UsersController < ApplicationController
    # contorller runs when browser makes request - hits GET/POST/PATCH/DELETE - creates instance of controller for that request. 
    # current_user to return User.first (hardcoded-phase 4 will have auth)
    # All users
    get '/users' do
        users = User.all.to_json()
        # users.to_json()
        # '<h2>Hello <em>World</em>!</h2>'
    end

  # Users show route
    # get '/users/:id' do
    #     user = User.find_by(id: params[:id])
    #     if user
    #         user.to_json(include: :tasks)
    #     else 
    #         "404 - User not found"
    #     end
    # end

    post '/users' do 
        user = User.create(
            name: params[:name], 
            age: params[:age]
        )
        user.to_json 
    end
    # private- any methods defined below it wont be called from outsized of the class. helper internal functions. 

end