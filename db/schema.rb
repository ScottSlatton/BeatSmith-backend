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

ActiveRecord::Schema.define(version: 2019_05_07_210533) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adventurers", force: :cascade do |t|
    t.string "name"
    t.integer "level", default: 1
    t.integer "attack", default: 1
    t.integer "armor", default: 1
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_adventurers_on_user_id", unique: true
  end

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
    t.integer "level", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.integer "level", default: 1
    t.integer "experience", default: 0
    t.string "friend_code"
    t.integer "ore", default: 0
    t.integer "highest_combo", default: 0
    t.integer "highest_score", default: 0
    t.integer "click_strength", default: 1
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "adventurers", "users"
end
