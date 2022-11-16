class Artist < ActiveRecord::Base
    # interface to to view and modify data. does NOT intereact w the view. Using ActiveRecord
    belongs_to :record_labels

end

