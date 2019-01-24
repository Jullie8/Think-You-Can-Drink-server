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

ActiveRecord::Schema.define(version: 2019_01_23_202129) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alcohols", force: :cascade do |t|
    t.string "name"
    t.integer "abv"
    t.integer "sd"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drinks", force: :cascade do |t|
    t.integer "drink_amount"
    t.bigint "alcohol_id"
    t.bigint "user_list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alcohol_id"], name: "index_drinks_on_alcohol_id"
    t.index ["user_list_id"], name: "index_drinks_on_user_list_id"
  end

  create_table "user_lists", force: :cascade do |t|
    t.string "sex"
    t.integer "weight"
  end

  add_foreign_key "drinks", "alcohols"
  add_foreign_key "drinks", "user_lists"
end


