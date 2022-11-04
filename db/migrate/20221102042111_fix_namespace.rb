class FixNamespace < ActiveRecord::Migration[6.1]
  def change
    create_table :occupants do |t|
      t.string :name
      t.integer :age
      t.string :occupation
      t.integer :income
    end
  end
end
