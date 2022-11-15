class CreateVenues < ActiveRecord::Migration[6.1]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :location
      t.integer :price
      t.belongs_to :artist
      t.belongs_to :record_label
    end
  end
end