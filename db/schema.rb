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

ActiveRecord::Schema.define(version: 2019_04_17_033314) do

  create_table "properties", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "coordinate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reciepts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "month"
    t.integer "year"
    t.string "pdf_path"
    t.string "email"
    t.string "uuid"
    t.string "information"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reciepts_on_user_id"
  end

  create_table "rentals", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "property_id"
    t.integer "year"
    t.integer "month"
    t.string "status", default: "PENDING"
    t.string "document"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_rentals_on_property_id"
    t.index ["user_id"], name: "index_rentals_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "token"
    t.string "name"
    t.string "email"
    t.string "address"
    t.string "work"
    t.string "work_place"
    t.string "status", default: "PENDING"
    t.string "role", default: "RENTER"
    t.boolean "delete", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
