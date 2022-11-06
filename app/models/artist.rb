class Artist < ActiveRecord::Base
    # belongs_to recordlabel
    # has_many shows/deals whatever
    def self.create_with_name(name)
        Artist.create(name: name)
    end
    def self.find_artist_with_id(id)
        Artist.find(id)
    end
    def self.update_with_attributes(attributes)
        self.update(attributes)
    end
    def self.delete_by_id(id)
        artist = Artist.find(id)
        artist.destroy
    end
end