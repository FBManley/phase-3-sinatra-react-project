class Artist < ActiveRecord::Base
    belongs_to :record_label

end

 # interface to to view and modify data. does NOT intereact w the view. Using ActiveRecord