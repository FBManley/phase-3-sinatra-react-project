class Venue < ActiveRecord::Base
    has_many :record_labels
    # create / read only

end