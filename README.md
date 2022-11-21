<!-- One To Many Relationships -->
# App Name: SignMe
This is a SPA using a REACT front end and Sinatra/ActiveRecord backend.
Frontend Repo Link?

# Installation/Run:
http://localhost:9292

# Usage/Notes:
Fork and clone
run $ bundle install
run $ bundle exec rake db:seed
run $ bundle exec rake server
1. Add a record label: Read and Create
2. Add an artist: Read and Create
3. Update an artist siging: Update
4. Delete an artist: Delete
5. Repeat until full

# YOUTUBE
https://youtu.be/jPHTd_5Eqvc
# BLOG
https://medium.com/@jbmanley45/mvc-how-model-view-controller-frame-works-61edeeba489a

# MVP:
Uses ActiveRecord : CHECK 
A one-to-many relationship : CHECK
Create and Read for both models : CHECK
Full CRUD for one of the models : CHECK
React front end to interact w API to perfrom CRUD : CHECK
Update State using setState after recieving response from POST/PATCH/DELETE req.  (do not rely on GET to update state) : SEMI CHECK
RESTful routes : CHECK
active record methods in your controller to grab the needed data from your database : CHECK


//////////////////IGNORE: GEN NOTES//////////////////////////////////
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
  #   patch "/record_labels/:id" do
  #   rl = RecordLabel.find(params[:id])
  #   rl.update(name: params[:name])
  #   rl.to_json(include: [:artists])
  # end

  # delete "/record_labels/:id" do 
  #   rl = RecordLabel.find(params[:id])
  #   rl.destroy() 
  #   rl.to_json()
  # end
  # post "/venues" do
  #   venue = Venue.create(name: params[:name], location: params[:location], price: params[:price])
  #   venue.to_json 
  # end

   