class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name 
      t.string :albums
      t.belongs_to :record_label
    end
  end
end