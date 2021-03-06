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

ActiveRecord::Schema.define(version: 20170510104504) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beds", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", force: true do |t|
    t.string "name"
  end

  create_table "favorites", force: true do |t|
    t.integer "listing_id", null: false
    t.integer "user_id",    null: false
  end

  add_index "favorites", ["listing_id", "user_id"], name: "index_favorites_on_listing_id_and_user_id", unique: true, using: :btree

  create_table "history_records", force: true do |t|
    t.string   "message"
    t.integer  "listing_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "history_records", ["listing_id"], name: "index_history_records_on_listing_id", using: :btree

  create_table "listing_neighborhoods", force: true do |t|
    t.integer "listing_id"
    t.integer "neighborhood_id"
  end

  create_table "listing_types", force: true do |t|
    t.string   "name"
    t.string   "string"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "listings", force: true do |t|
    t.integer  "agent_id"
    t.string   "main_photo",                       default: "wzupztbtjzhe0fi3fpda.jpg"
    t.string   "street_address"
    t.string   "zip_code"
    t.decimal  "price"
    t.integer  "size"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "full_baths_no"
    t.integer  "half_baths_no"
    t.integer  "status_id"
    t.integer  "bed_id"
    t.integer  "neighborhood_id"
    t.integer  "property_type_id"
    t.integer  "listing_type_id"
    t.integer  "city_id"
    t.string   "unit_no"
    t.boolean  "dishwasher",                       default: false
    t.boolean  "backyard",                         default: false
    t.boolean  "balcony",                          default: false
    t.boolean  "elevator",                         default: false
    t.boolean  "laundry_in_building",              default: false
    t.boolean  "laundry_in_unit",                  default: false
    t.boolean  "live_in_super",                    default: false
    t.boolean  "absentee_landlord",                default: false
    t.boolean  "walk_up",                          default: false
    t.boolean  "no_pets",                          default: false
    t.boolean  "cats",                             default: false
    t.boolean  "dogs",                             default: false
    t.boolean  "approved_pets_only",               default: false
    t.boolean  "heat_and_hot_water",               default: false
    t.boolean  "gas",                              default: false
    t.boolean  "all_utilities",                    default: false
    t.boolean  "none",                             default: false
    t.date     "available_date"
    t.string   "landlord"
    t.boolean  "parking_available",                default: false
    t.boolean  "storage_available",                default: false
    t.string   "renter"
    t.boolean  "yard",                             default: false
    t.boolean  "patio",                            default: false
    t.boolean  "export_to_streeteasy",             default: false
    t.string   "fake_address"
    t.boolean  "export_to_nakedapartments",        default: false
    t.string   "title"
    t.string   "access"
    t.integer  "fake_city_id"
    t.string   "fake_unit_no"
    t.boolean  "hide_address_for_nakedapartments", default: true
    t.boolean  "exported_to_nakedapartments",      default: false
    t.boolean  "exported_to_streeteasy",           default: false
    t.boolean  "exported_to_myastoria",            default: false
    t.boolean  "featured",                         default: false
    t.boolean  "export_to_myastoria",              default: false
    t.boolean  "exported_to_zumper",               default: false
    t.boolean  "export_to_zumper",                 default: false
    t.integer  "type_of_space_id"
    t.boolean  "dividable",                        default: false
    t.boolean  "taxes_included",                   default: false
    t.decimal  "taxes_amount"
    t.decimal  "charges"
    t.decimal  "maintenance"
    t.date     "start_date"
    t.date     "expiration_date"
    t.decimal  "commission"
    t.string   "mls_no"
    t.integer  "lot_size"
    t.integer  "building_size"
    t.integer  "interior_square_feet"
    t.boolean  "tax_abatement",                    default: false
    t.date     "tax_abatement_end_date"
    t.integer  "action_user_id"
    t.date     "contract_date"
    t.date     "close_date"
  end

  add_index "listings", ["available_date"], name: "index_listings_on_available_date", using: :btree
  add_index "listings", ["bed_id"], name: "index_listings_on_bed_id", using: :btree
  add_index "listings", ["city_id"], name: "index_listings_on_city_id", using: :btree
  add_index "listings", ["listing_type_id"], name: "index_listings_on_listing_type_id", using: :btree
  add_index "listings", ["neighborhood_id"], name: "index_listings_on_neighborhood_id", using: :btree
  add_index "listings", ["property_type_id"], name: "index_listings_on_property_type_id", using: :btree
  add_index "listings", ["user_id"], name: "index_listings_on_user_id", using: :btree

  create_table "neighborhoods", force: true do |t|
    t.string "name"
  end

  create_table "property_floorplans", force: true do |t|
    t.string   "floorplan_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "listing_id"
    t.integer  "order_num"
  end

  add_index "property_floorplans", ["listing_id"], name: "index_property_floorplans_on_listing_id", using: :btree

  create_table "property_photos", force: true do |t|
    t.string   "photo_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "listing_id"
    t.integer  "order_num"
  end

  add_index "property_photos", ["listing_id"], name: "index_property_photos_on_listing_id", using: :btree

  create_table "property_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "property_videos", force: true do |t|
    t.string   "video_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "listing_id"
    t.integer  "order_num"
  end

  add_index "property_videos", ["listing_id"], name: "index_property_videos_on_listing_id", using: :btree

  create_table "space_types", force: true do |t|
    t.string "name"
  end

  create_table "statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_for_rentals", default: false
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "login"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",                    default: false
    t.string   "avatar"
    t.string   "phone"
    t.string   "fax"
    t.text     "biography"
    t.string   "address"
    t.string   "license_no"
    t.string   "social_security_no"
    t.float    "commision_split"
    t.string   "license_type"
    t.boolean  "naked_apartments_account", default: false
    t.boolean  "active",                   default: true
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
