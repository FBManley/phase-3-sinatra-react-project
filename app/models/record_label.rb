class RecordLabel < ActiveRecord::Base
    has_many :artists
    has_many :venues, through: :artist
end