class RecordLabel < ActiveRecord::Base
    has_many :artists, dependent: :destroy

end