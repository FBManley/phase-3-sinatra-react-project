class CreateVenues < ActiveRecord::Migration[6.1]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :location
      t.integer :price
    end
  end
end