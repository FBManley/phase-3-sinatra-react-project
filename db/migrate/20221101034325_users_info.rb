class UsersInfo < ActiveRecord::Migration[6.1]
  def change
    create_table :users_info  do |t|
      t.string :name
      t.integer :age
      t.string :occupation
    end
  end
end
