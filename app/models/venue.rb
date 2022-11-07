class Venue < ActiveRecord::Base
    # has_many :record_labels
    # create / read only
    belongs_to :artist
    # has_many :artists
    # venue table needs artist_id
    # build_artists
    # @artist = @venue.create_artist()
end