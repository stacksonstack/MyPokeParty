class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :pokemontype 
      t.string :description 
      t.string :front_img 
      t.string :back_img
      t.integer :pokedex_number

      t.timestamps
    end
  end
end
