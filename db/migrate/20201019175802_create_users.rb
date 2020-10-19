class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.integer :age 
      t.string :email 
      t.string :password 
      t.string :bio 
      t.string :favorite_pokemon
      t.string :favorite_type
      t.timestamps
    end
  end
end
