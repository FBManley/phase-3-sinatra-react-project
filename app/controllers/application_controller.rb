class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  # automatically use json in form of params for two way communication
  # full CRUD
  get "/artists" do 
    artists = Artist.all 
    artists.to_json(include: :record_labels) 
  end

  post "/artists" do 
    artist = Artist.create(name: params[:name], albums: params[:albums])
    artist.to_json
  end

  patch "/artists/:id" do 
    artists = Artist.find(params[:id])
    artists.update(name: params[:name], albums: params[:albums])
    artists.to_json
  end

  delete "/artists/:id" do
    artist = Artist.find(params[:id])
    artist.destroy 
    artist.to_json
  end

  # Read and Create
  get "/venues" do 
    venues = Venue.all.to_json
  end

  post "/venues" do
    venue = Venue.create(name: params[:name], location: params[:location], price: params[:price])
    venue.to_json 
  end

end
