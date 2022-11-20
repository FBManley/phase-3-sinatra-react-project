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

  patch "/artists/:id" do
    artists = Artist.find(params[:id])
    artists.update(record_label_id: params[:record_label_id], is_signed: params[:is_signed])
    artists.to_json()
    # may need to change whats updated. restarting vs to port iss
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
  # how to delete nested data + parent-> in model-> primarily to do w association
  # pointers for project review. 
  # active record- what is it, methods associated
  # create, find or create by-> takes in key values. 
  # OO Ruby, attr_acessor, procedural (returning values), self keyword, initialize
  # API flow, explain what params comes from, 
  # body of json/ how frontend exactly connects to backend 
  # associations, explain which gets foriegn key
  # be able to impliment active record(get artist, get name of artist record label, use dot notation)
  # demonstrate OO RUby - code challenge for that or active record
  # ensure project review date was OK

end
