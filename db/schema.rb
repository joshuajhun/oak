# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151028144217) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "badges", force: :cascade do |t|
    t.string "name"
    t.string "text"
  end

  create_table "pokeballs", force: :cascade do |t|
    t.integer "trainer_id"
    t.integer "pokemon_id"
  end

  add_index "pokeballs", ["pokemon_id"], name: "index_pokeballs_on_pokemon_id", using: :btree
  add_index "pokeballs", ["trainer_id"], name: "index_pokeballs_on_trainer_id", using: :btree

  create_table "pokemons", force: :cascade do |t|
    t.text "name"
    t.text "kind"
  end

  create_table "trainers", force: :cascade do |t|
    t.text "name"
    t.text "gender"
  end

  add_foreign_key "pokeballs", "pokemons"
  add_foreign_key "pokeballs", "trainers"
end
