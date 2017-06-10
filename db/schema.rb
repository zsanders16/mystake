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

ActiveRecord::Schema.define(version: 20170610161621) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answer_cards", force: :cascade do |t|
    t.text "phrase"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "game_cards", force: :cascade do |t|
    t.bigint "sentence_card_id"
    t.bigint "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_game_cards_on_game_id"
    t.index ["sentence_card_id"], name: "index_game_cards_on_sentence_card_id"
  end

  create_table "games", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "player_cards", force: :cascade do |t|
    t.bigint "answer_card_id"
    t.bigint "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["answer_card_id"], name: "index_player_cards_on_answer_card_id"
    t.index ["player_id"], name: "index_player_cards_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.bigint "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_players_on_game_id"
  end

  create_table "sentence_cards", force: :cascade do |t|
    t.text "phrase"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "game_cards", "games"
  add_foreign_key "game_cards", "sentence_cards"
  add_foreign_key "player_cards", "answer_cards"
  add_foreign_key "player_cards", "players"
  add_foreign_key "players", "games"
end
