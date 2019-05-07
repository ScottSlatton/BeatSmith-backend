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

ActiveRecord::Schema.define(version: 2019_04_26_175403) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bosses", force: :cascade do |t|
    t.string "name"
    t.integer "level", default: 1
    t.integer "health", default: 1
    t.integer "damage", default: 1
    t.integer "armor", default: 0
    t.integer "experience", default: 1
    t.boolean "defeated", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crafts", force: :cascade do |t|
    t.string "name"
    t.integer "cost", default: 0
    t.integer "damage", default: 0
    t.integer "armor", default: 0
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friends", force: :cascade do |t|
    t.bigint "friender_id"
    t.bigint "friended_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["friended_id"], name: "index_friends_on_friended_id"
    t.index ["friender_id"], name: "index_friends_on_friender_id"
  end

  create_table "matches", force: :cascade do |t|
    t.bigint "team_id"
    t.integer "score", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_matches_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.bigint "player1_id"
    t.bigint "player2_id"
    t.bigint "player3_id"
    t.bigint "player4_id"
    t.bigint "match_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_teams_on_match_id"
    t.index ["player1_id"], name: "index_teams_on_player1_id"
    t.index ["player2_id"], name: "index_teams_on_player2_id"
    t.index ["player3_id"], name: "index_teams_on_player3_id"
    t.index ["player4_id"], name: "index_teams_on_player4_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.integer "level", default: 1
    t.integer "experience", default: 0
    t.string "friend_code"
    t.integer "highest_combo", default: 0
    t.integer "highest_score", default: 0
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
