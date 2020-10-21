require 'json'
#require 'rest-client'
require_relative '../config/environment'
require 'byebug'
#pokemon.each do |pokemon|
Pokemon.destroy_all
pm_array = []
desc_array = []

for i in 1..151
  # get data (including species, sprites, and base stats) about each of the first 151 pokemon
  data = open("https://pokeapi.co/api/v2/pokemon/#{i}").read
  json_data = JSON.parse(data)
  pm_array.push(json_data)
  # get descriptions for each of the first 151 pokemon
  desc = open("https://pokeapi.co/api/v2/pokemon-species/#{i}").read
  json_desc = JSON.parse(desc)
  desc_array.push(json_desc)
  
end

for pokemon in pm_array
    Pokemon.create(
      name: pokemon["name"],
      front_img: pokemon["sprites"]["front_default"],
      back_img: pokemon["sprites"]["back_default"],
      description: desc_array[pokemon["id"] - 1]["flavor_text_entries"][0]["flavor_text"],
      pokemontype: pokemon["types"][pokemon["types"].length - 1]["type"]["name"],
      pokedex_number: pokemon["order"],
    )
end