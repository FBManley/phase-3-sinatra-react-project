class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  # automatically use json in form of params for two way communication
  # need this to load tasks/users controllers

  # need user form to add user
  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end
  # contsains control logic-> manipulates model. he model would specify what data the list items should contain — item, price, etc. — and what list items are already present
  #interact w model


end
