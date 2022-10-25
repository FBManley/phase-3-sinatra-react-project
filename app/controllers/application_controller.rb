class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
 # need user form to add user
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end


end
