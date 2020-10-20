class PokemonsController < ApplicationController

    def index
        @pokemons = Pokemon.all
    end

    def show
        @pokemon = Pokemon.find(params[:id])
    end
    

    private

    def pokemon_params
        params.require(:pokemon).permit(:name, :pokemontype, :description, :front_img, :back_img, :pokedex_number)
    end


end
