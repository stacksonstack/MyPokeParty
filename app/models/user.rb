class User < ApplicationRecord
    has_many :parties 

    # has_many :pokemons, through: :parties
    def pokemons
        pokemons = []
        self.parties.each do |p|
            pokemons.push(Pokemon.find(p.pokemon1_id))
            pokemons.push(Pokemon.find(p.pokemon2_id))
            pokemons.push(Pokemon.find(p.pokemon3_id))
            pokemons.push(Pokemon.find(p.pokemon4_id))
            pokemons.push(Pokemon.find(p.pokemon5_id))
            pokemons.push(Pokemon.find(p.pokemon6_id))
        end
        pokemons
    end
end
