# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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
      description: desc_array[pokemon["id"] - 1]["flavor_text_entries"][desc_array[pokemon["id"] - 1]["flavor_text_entries"].length - 13]["flavor_text"],
      pokemontype: pokemon["types"][pokemon["types"].length - 1]["type"]["name"],
    )
end

#1,2,3,6,7, 8,9,10 11,12