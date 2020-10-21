# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_19_180613) do

  create_table "parties", force: :cascade do |t|
    t.integer "user_id"
    t.integer "pokemon1_id"
    t.integer "pokemon2_id"
    t.integer "pokemon3_id"
    t.integer "pokemon4_id"
    t.integer "pokemon5_id"
    t.integer "pokemon6_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.string "pokemontype"
    t.string "description"
    t.string "front_img"
    t.string "back_img"
    t.integer "pokedex_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.integer "age"
    t.string "email"
    t.string "password_digest"
    t.string "bio"
    t.string "favorite_pokemon"
    t.string "favorite_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
