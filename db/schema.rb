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

ActiveRecord::Schema.define(version: 2020_08_30_205955) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clubs", force: :cascade do |t|
    t.string "name"
    t.bigint "league_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "external_id"
    t.index ["league_id"], name: "index_clubs_on_league_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "external_id"
  end

  create_table "matches", force: :cascade do |t|
    t.bigint "home_club_id"
    t.bigint "away_club_id"
    t.integer "home_result"
    t.integer "away_result"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "result", default: 0
    t.index ["away_club_id"], name: "index_matches_on_away_club_id"
    t.index ["home_club_id"], name: "index_matches_on_home_club_id"
  end

  add_foreign_key "clubs", "leagues"
  add_foreign_key "matches", "clubs", column: "away_club_id"
  add_foreign_key "matches", "clubs", column: "home_club_id"
end
