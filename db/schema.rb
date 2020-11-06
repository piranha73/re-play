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

ActiveRecord::Schema.define(version: 2020_11_06_204934) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.jsonb "optionals", default: "{}", null: false
    t.bigint "team_id", null: false
    t.bigint "user_id", null: false
    t.bigint "tournament_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["team_id"], name: "index_bookings_on_team_id"
    t.index ["tournament_id"], name: "index_bookings_on_tournament_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "games", force: :cascade do |t|
    t.bigint "home_team_id", null: false
    t.bigint "away_team_id", null: false
    t.bigint "matchday_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["away_team_id"], name: "index_games_on_away_team_id"
    t.index ["home_team_id"], name: "index_games_on_home_team_id"
    t.index ["matchday_id"], name: "index_games_on_matchday_id"
  end

  create_table "join_team_players", force: :cascade do |t|
    t.bigint "team_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["team_id"], name: "index_join_team_players_on_team_id"
    t.index ["user_id"], name: "index_join_team_players_on_user_id"
  end

  create_table "matchdays", force: :cascade do |t|
    t.integer "number"
    t.bigint "tournament_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tournament_id"], name: "index_matchdays_on_tournament_id"
  end

  create_table "sports", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "structures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tournaments", force: :cascade do |t|
    t.jsonb "optionals", default: "{}", null: false
    t.string "name"
    t.string "location"
    t.string "description"
    t.integer "number_of_teams"
    t.integer "number_of_players_per_team"
    t.integer "price"
    t.datetime "start_time"
    t.datetime "end_time"
    t.bigint "user_id", null: false
    t.bigint "sport_id", null: false
    t.bigint "structure_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "started", default: false
    t.index ["sport_id"], name: "index_tournaments_on_sport_id"
    t.index ["structure_id"], name: "index_tournaments_on_structure_id"
    t.index ["user_id"], name: "index_tournaments_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.date "birth_date"
    t.string "social_security_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "teams"
  add_foreign_key "bookings", "tournaments"
  add_foreign_key "bookings", "users"
  add_foreign_key "games", "matchdays"
  add_foreign_key "games", "teams", column: "away_team_id"
  add_foreign_key "games", "teams", column: "home_team_id"
  add_foreign_key "join_team_players", "teams"
  add_foreign_key "join_team_players", "users"
  add_foreign_key "matchdays", "tournaments"
  add_foreign_key "tournaments", "sports"
  add_foreign_key "tournaments", "structures"
  add_foreign_key "tournaments", "users"
end
