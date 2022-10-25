class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :task
      t.integer :complete_by
      t.timestamps
    end
  end
end
