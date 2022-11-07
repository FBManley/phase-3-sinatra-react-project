require 'pry'
# a method provides functionality to an Object. A class method provides functionality to a class itself, while an instance method provides functionality to one instance of a class.
class Artist < ActiveRecord::Base
    # belongs_to :record_label
    has_many :venues
    belongs_to :record_labels

    # attr_accessor(:name, :albums)
    # @@all = [] 
    # @@albums = []
    # @@name = []
    # everytime I create an instance, shovel into an array
    # def initialize(name, albums)
    #     @name = name 
    #     @albums = albums
    #     # @@all << self 
    #     # @@albums << albums
    #     # @@name << name
    # end
    # def self.all 
    #     @@all 
    # end
    # def self.name
    #     @@name.uniq
    # end
    # def self.albums
    #     @@albums.uniq 
    # end

    # # class methods
    # def self.create_with_name(name, albums, venue_id)
    #     Artist.create(name: name, albums: albums, venue_id: venue_id)
    # end
    # def self.newest_Artist
    #     Artist.all.order(:name)
    # end
    # # instance methods
    # def from_an_instance
    #     "Hello, from the instance method."
    # end

    # def find_artist_with_id(id)
    #     Artist.find(id)
    # end

    # # def self.update_with_attributes(attributes)
    # #     self.update(attributes)
    # # end
    # def delete_by_id(id)
    #     artist = Artist.find(params[:id])
    #     artist.destroy
    # end

    # def get_venues
    #     self.venues
    # end
    # def get_location_of_first_venue
    #     self.venues.first.location
    # end
    # def venue 
    #     Venue.find(self.venue_id)
    # end

   

    # art1 = Artist.new(name: "jacknjill rock", albums: "stackinpacks", venue_id: venue_id)
    # art2 = Artist.new(name: "housetime", albums: "beatsnbeatz", )
    # binding.pry
end

