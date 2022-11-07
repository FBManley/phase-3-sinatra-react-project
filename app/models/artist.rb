require 'pry'
class Artist < ActiveRecord::Base
    has_many :venues
    belongs_to :record_labels
end

