class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Users Index Route
  get "/users" do
    users = User.all 
    users.to_json(include: :tasks)
    # { message: "Good luck with your project!" }.to_json
  end
  # Users show route
  get "/users/:id" do
    user = User.find_by(id: params[:id])
    if user
      user.to_json(include: :tasks)
    else 
      "404 - User not found"
    end
  end

  # need user form to add user

    get '/tasks' do 
      tasks = Task.all 
      tasks.to_json
    end

    post '/tasks' do 
      task = Task.create(params)
      task.to_json
    end

    delete '/tasks/:id' do 
      task = Task.find_by(id: params[:id])
      task.destroy
    end

    patch '/tasks/:id' do 
     task = Task.find_by(id: params[:id])
     task.update(name: params[:name])
     task.to_json
    end
   end
  

end
