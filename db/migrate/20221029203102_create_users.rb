class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users_table do |t|
      t.string :name
      t.text :age
      t.timestamps
    end
  end
end
