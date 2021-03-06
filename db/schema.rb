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

ActiveRecord::Schema.define(version: 20170720165351) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "email"
    t.string "phone_number"
    t.integer "age"
    t.integer "gender"
    t.string "state"
    t.boolean "smoker"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "coverage_amount"
    t.string "customer_name"
    t.integer "weight"
    t.string "height"
    t.integer "marriage_status"
    t.integer "children"
    t.string "income_range"
    t.integer "health_rating"
    t.boolean "currently_has_policy"
    t.boolean "has_been_contacted"
  end

end
