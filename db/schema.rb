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

ActiveRecord::Schema.define(version: 20150510001116) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "locations", force: :cascade do |t|
    t.string   "city"
    t.string   "address"
    t.integer  "locationable_id"
    t.string   "locationable_type"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "locations", ["locationable_id", "locationable_type"], name: "index_locations_on_locationable_id_and_locationable_type", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.text     "description"
    t.integer  "profileable_id"
    t.string   "profileable_type"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "profiles", ["profileable_id", "profileable_type"], name: "index_profiles_on_profileable_id_and_profileable_type", using: :btree

  create_table "startups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "startup_id"
  end

end
