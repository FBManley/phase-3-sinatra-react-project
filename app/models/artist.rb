class Artist < ActiveRecord::Base
    belongs_to :record_label
    # has_many :venues
    # belongs_to recordlabel

    # has_many shows/deals whatever
    # def self.create_with_name(name, albums)
    #     Artist.create(name: name, albums: albums)
    # end
    # def self.find_artist_with_id(id)
    #     Artist.find(id)
    # end
    # def self.update_with_attributes(attributes)
    #     self.update(attributes)
    # end
    # def self.delete_by_id(id)
    #     artist = Artist.find(id)
    #     artist.destroy
    # end


end