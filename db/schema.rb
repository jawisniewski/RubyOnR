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

ActiveRecord::Schema.define(version: 20170322171554) do

  create_table "cars", force: :cascade do |t|
    t.string   "name"
    t.integer  "year"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "login"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "rans", force: :cascade do |t|
    t.string   "name"
    t.integer  "cars_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cars_id"], name: "index_rans_on_cars_id"
  end

  create_table "runs", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.decimal  "distance"
    t.integer  "cars_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "login"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
