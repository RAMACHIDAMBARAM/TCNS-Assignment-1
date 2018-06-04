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

ActiveRecord::Schema.define(version: 20180604023159) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: :cascade do |t|
    t.text "order_no"
    t.text "current_status"
    t.text "remarks"
    t.text "promise_date"
    t.text "first_attempt_date"
    t.text "last_attempt_date"
    t.text "expected_date"
    t.text "payment_type"
    t.text "amount"
    t.text "delivered"
    t.text "returned"
    t.text "rto"
    t.text "picked_up"
    t.text "dto"
    t.text "canceled"
    t.text "awb_no"
    t.text "awb_status"
    t.text "first_bagging_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
