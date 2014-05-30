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

ActiveRecord::Schema.define(version: 20140530165916) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "business_categories", force: true do |t|
    t.integer  "category_id"
    t.integer  "business_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "business_categories", ["business_id"], name: "index_business_categories_on_business_id", using: :btree
  add_index "business_categories", ["category_id", "business_id"], name: "index_business_categories_on_category_id_and_business_id", unique: true, using: :btree
  add_index "business_categories", ["category_id"], name: "index_business_categories_on_category_id", using: :btree

  create_table "businesses", force: true do |t|
    t.string   "name",                 null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_claimed"
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
    t.float    "yelp_rating"
  end

  create_table "categories", force: true do |t|
    t.string   "title",          null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category_alias"
  end

  add_index "categories", ["category_alias"], name: "index_categories_on_category_alias", unique: true, using: :btree
  add_index "categories", ["title"], name: "index_categories_on_title", unique: true, using: :btree

  create_table "favorites", force: true do |t|
    t.integer  "user_id",     null: false
    t.integer  "business_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "favorites", ["business_id"], name: "index_favorites_on_business_id", using: :btree
  add_index "favorites", ["user_id", "business_id"], name: "index_favorites_on_user_id_and_business_id", unique: true, using: :btree
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id", using: :btree

  create_table "friendships", force: true do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "confirmed",  default: false
  end

  add_index "friendships", ["friend_id"], name: "index_friendships_on_friend_id", using: :btree
  add_index "friendships", ["user_id", "friend_id"], name: "index_friendships_on_user_id_and_friend_id", unique: true, using: :btree
  add_index "friendships", ["user_id"], name: "index_friendships_on_user_id", using: :btree

  create_table "locations", force: true do |t|
    t.string   "business_id"
    t.string   "city"
    t.string   "display_address"
    t.string   "postal_code"
    t.string   "country_code"
    t.string   "address"
    t.string   "state_code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "latitude"
    t.float    "longitude"
  end

  add_index "locations", ["business_id"], name: "index_locations_on_business_id", using: :btree

  create_table "ratings", force: true do |t|
    t.integer  "business_id", null: false
    t.integer  "user_id",     null: false
    t.integer  "stars",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ratings", ["business_id", "user_id"], name: "index_ratings_on_business_id_and_user_id", unique: true, using: :btree
  add_index "ratings", ["business_id"], name: "index_ratings_on_business_id", using: :btree
  add_index "ratings", ["user_id"], name: "index_ratings_on_user_id", using: :btree

  create_table "recommendations", force: true do |t|
    t.integer  "business_id",                 null: false
    t.integer  "user_id",                     null: false
    t.boolean  "viewed",      default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "recommendations", ["business_id", "user_id"], name: "index_recommendations_on_business_id_and_user_id", unique: true, using: :btree
  add_index "recommendations", ["business_id"], name: "index_recommendations_on_business_id", using: :btree
  add_index "recommendations", ["user_id", "viewed"], name: "index_recommendations_on_user_id_and_viewed", using: :btree
  add_index "recommendations", ["user_id"], name: "index_recommendations_on_user_id", using: :btree

  create_table "saved_searches", force: true do |t|
    t.integer  "search_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "saved_searches", ["search_id", "user_id"], name: "index_saved_searches_on_search_id_and_user_id", unique: true, using: :btree
  add_index "saved_searches", ["search_id"], name: "index_saved_searches_on_search_id", using: :btree
  add_index "saved_searches", ["user_id"], name: "index_saved_searches_on_user_id", using: :btree

  create_table "searches", force: true do |t|
    t.string   "location",    null: false
    t.string   "search_term", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "searches", ["location", "search_term"], name: "index_searches_on_location_and_search_term", using: :btree

  create_table "users", force: true do |t|
    t.string   "username",               default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  create_table "yelp_reviews", force: true do |t|
    t.text     "excerpt"
    t.string   "id_string",              null: false
    t.integer  "rating"
    t.string   "rating_image_large_url"
    t.string   "rating_image_small_url"
    t.string   "rating_image_url"
    t.integer  "yelp_time_created"
    t.string   "yelp_user_id",           null: false
    t.string   "yelp_user_img"
    t.string   "yelp_user_name"
    t.integer  "business_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "yelp_reviews", ["id_string"], name: "index_yelp_reviews_on_id_string", unique: true, using: :btree

end
