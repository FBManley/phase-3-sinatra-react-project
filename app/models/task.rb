class Task < ActiveRecord::Base
    belongs_to :user

    def initialize(task, completed_by)
        @task = task 
        @completed_by = completed_by
    end 

end