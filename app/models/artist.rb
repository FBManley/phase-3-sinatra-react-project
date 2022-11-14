require 'pry'
class Artist < ActiveRecord::Base
    # interface to to view and modify data. does NOT intereact w the view. Using ActiveRecord
    has_many :venues
    belongs_to :record_labels
end

