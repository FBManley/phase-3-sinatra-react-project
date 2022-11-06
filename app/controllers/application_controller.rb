class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  # automatically use json in form of params for two way communication
  # need this to load tasks/users controllers

  # need user form to add user
  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end
  get "/artists" do 
    artists = Artist.all 
    artists.to_json 
  end


end
