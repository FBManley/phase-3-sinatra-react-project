class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  # automatically use json in form of params for two way communication
  # connects the Model. Sends response to the View.Interface between React and our database is our API
  # full CRUD
  get "/artists" do 
    artists = Artist.all
    artists.to_json() 
  end

  get "/record_labels" do 
    rl = RecordLabel.all
    rl.to_json(include: [:artists])
  end

  # get "/record_labels/:id" do
  #   rl = RecordLabel.find(params[:id])
  #   rl.to_json()
  # end

  # get "/artists/:id" do 
  #   artist = Artist.find_by_id(params[:id])
  #   artist.to_json()
  # end

  # post "/artists" do 
  #   artist = Artist.create(name: params[:name], albums: params[:albums])
  #   artist.to_json
  # end

  # patch "/artists/:id" do 
  #   artists = Artist.find(params[:id])
  #   artists.update(name: params[:name], albums: params[:albums])
  #   artists.to_json
  # end

  # delete "/artists/:id" do
  #   artist = Artist.find(params[:id])
  #   artist.destroy 
  #   artist.to_json
  # end

  # Read and Create
  # get "/record_labels" do 
  #   Venue.all.to_json
  # end

  # post "/venues" do
  #   venue = Venue.create(name: params[:name], location: params[:location], price: params[:price])
  #   venue.to_json 
  # end

end
