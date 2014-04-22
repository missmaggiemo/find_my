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

ActiveRecord::Schema.define(version: 20140422161330) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "businesses", force: true do |t|
    t.string   "name",                 null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_claimed"
    t.float    "rating"
    t.string   "mobile_url"
    t.string   "rating_img_url"
    t.string   "rating_img_url_large"
    t.integer  "review_count"
    t.string   "snippet_image_url"
    t.string   "rating_img_url_small"
    t.string   "url"
    t.integer  "menu_date_updated"
    t.integer  "phone"
    t.text     "snippet_text"
    t.string   "image_url"
    t.string   "display_phone"
    t.string   "menu_provider"
    t.string   "id_string"
    t.boolean  "is_closed"
  end

  create_table "locations", force: true do |t|
    t.string   "business_id"
    t.string   "city"
    t.string   "display_address"
    t.string   "neighborhoods"
    t.string   "postal_code"
    t.string   "country_code"
    t.string   "address"
    t.string   "state_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["business_id"], name: "index_locations_on_business_id", using: :btree

  create_table "neighborhoods", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "state_code"
    t.string   "country_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "neighborhoods", ["name", "city"], name: "index_neighborhoods_on_name_and_city", unique: true, using: :btree

  create_table "searches", force: true do |t|
    t.string   "location",    null: false
    t.string   "search_term", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
