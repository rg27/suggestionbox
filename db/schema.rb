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

ActiveRecord::Schema.define(version: 2021_05_20_133048) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "model", limit: 16, null: false
    t.integer "year", null: false
    t.datetime "created_at", precision: 0
    t.datetime "updated_at", precision: 0
    t.index ["user_id"], name: "cars_user_id_index"
  end

  create_table "failed_jobs", force: :cascade do |t|
    t.text "connection", null: false
    t.text "queue", null: false
    t.text "payload", null: false
    t.text "exception", null: false
    t.datetime "failed_at", precision: 0, default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "migrations", id: :serial, force: :cascade do |t|
    t.string "migration", limit: 255, null: false
    t.integer "batch", null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string "title", limit: 32, null: false
    t.text "description", null: false
    t.datetime "created_at", precision: 0
    t.datetime "updated_at", precision: 0
  end

  create_table "password_resets", id: false, force: :cascade do |t|
    t.string "email", limit: 255, null: false
    t.string "token", limit: 255, null: false
    t.datetime "created_at", precision: 0
    t.index ["email"], name: "password_resets_email_index"
  end

  create_table "planets", force: :cascade do |t|
    t.integer "region_id"
    t.string "name", limit: 32
    t.integer "orbital_period"
    t.datetime "created_at", precision: 0
    t.datetime "updated_at", precision: 0
    t.index ["name"], name: "planets_name_index"
    t.index ["region_id"], name: "planets_region_id_index"
  end

  create_table "posts", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "title", limit: 64, null: false
    t.text "body"
    t.datetime "created_at", precision: 0
    t.datetime "updated_at", precision: 0
    t.datetime "deleted_at", precision: 0
    t.index ["user_id"], name: "posts_user_id_index"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name", limit: 32, null: false
    t.datetime "created_at", precision: 0
    t.datetime "updated_at", precision: 0
  end

  create_table "topics", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_weapon", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "weapon_id", null: false
    t.datetime "created_at", precision: 0
    t.datetime "updated_at", precision: 0
    t.index ["user_id"], name: "user_weapon_user_id_index"
    t.index ["weapon_id"], name: "user_weapon_weapon_id_index"
  end

  create_table "users", force: :cascade do |t|
    t.integer "planet_id"
    t.string "name", limit: 255, null: false
    t.string "email", limit: 255, null: false
    t.datetime "email_verified_at", precision: 0
    t.string "password", limit: 255, null: false
    t.date "dob"
    t.time "bedtime", precision: 0
    t.string "role", limit: 255
    t.text "bio"
    t.decimal "latitude", precision: 10, scale: 8
    t.decimal "longitude", precision: 11, scale: 8
    t.string "remember_token", limit: 100
    t.datetime "created_at", precision: 0
    t.datetime "updated_at", precision: 0
    t.datetime "deleted_at", precision: 0
    t.index ["planet_id"], name: "users_planet_id_index"
  end

  create_table "votes", force: :cascade do |t|
    t.integer "topic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name", limit: 255, null: false
    t.integer "power", null: false
    t.datetime "created_at", precision: 0
    t.datetime "updated_at", precision: 0
  end

end
