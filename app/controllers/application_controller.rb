class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  get "/users/:id" do
    user = User.find_by(id: params[:id])
    if user
      user.to_json(include: :tasks)
    else 
      "404 - User not found"
    end

end
