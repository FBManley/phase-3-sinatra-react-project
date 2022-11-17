class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  # automatically use json in form of params for two way communication
  # connects the Model. Sends response to the View.Interface between React and our database is our API
  # full CRUD
  # CREATED ARTISTS GIVES NULL RECORD_LABEL_ID
  get "/artists" do 
    artists = Artist.all.to_json(include: [:record_label])
  end

  post "/artists" do
    artists = Artist.create(name: params[:name], albums: params[:albums], record_label_id: params[:record_label_id])
    artists = Artist.all.to_json(include: [:record_label])
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

  patch "/record_labels/:id" do
    rl = RecordLabel.find(params[:id])
    rl.update(name: params[:name])
    rl.to_json(include: [:artists])
  end

  delete "/record_labels/:id" do 
    rl = RecordLabel.find(params[:id])
    rl.destroy() 
    rl.to_json()
  end

end
