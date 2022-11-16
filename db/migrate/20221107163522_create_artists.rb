class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name 
      t.string :albums
      t.integer :record_label_id
    end
  end
end