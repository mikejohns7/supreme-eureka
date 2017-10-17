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

ActiveRecord::Schema.define(version: 20171017052753) do

  create_table "links", force: :cascade do |t|
    t.string "code"
    t.integer "is_active"
    t.integer "is_single_use"
    t.string "destination"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "is_secure"
    t.index ["code"], name: "index_links_on_code"
  end

  create_table "visits", force: :cascade do |t|
    t.string "host"
    t.string "referer"
    t.string "agent"
    t.integer "dnt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "link_id"
    t.string "original_url"
    t.index ["link_id"], name: "index_visits_on_link_id"
  end

end
