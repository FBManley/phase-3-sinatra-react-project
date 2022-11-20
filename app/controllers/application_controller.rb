class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/artists" do 
    artists = Artist.all.to_json(include: [:record_label])
  end
 
  post "/artists" do
    artists = Artist.create(name: params[:name], albums: params[:albums], record_label_id: params[:record_label_id], is_signed: params[:is_signed])
    artists = Artist.all.to_json(include: [:record_label])
  end

  patch "/artists/:id" do
    artists = Artist.find(params[:id])
    artists.update(is_signed: params[:is_signed])
    artists.to_json()
  end

  delete "/artists/:id" do 
    artists = Artist.find(params[:id])
    artists.destroy()
    artists.to_json()
  end

  get "/record_labels" do 
    rl = RecordLabel.all
    rl.to_json(include: [:artists])
  end

  get "/record_labels/:id" do
    rl = RecordLabel.find(params[:id])
    rl.to_json(include: [:artists])
  end

  post "/record_labels" do 
    rl = RecordLabel.create(name: params[:name])
    rl = RecordLabel.all.to_json(include: [:artists])
  end


end
