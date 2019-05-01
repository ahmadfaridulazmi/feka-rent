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

ActiveRecord::Schema.define(version: 2019_05_01_124953) do

  create_table "owners", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "ic_num"
    t.integer "tel_num"
    t.text "address"
    t.string "uuid", default: "60202b83-7c8a-4f27-a302-b984564019d3"
    t.datetime "created_at", null: f00alse
    t.datetime "updated_at", null: false
    t.index ["uuid"], name: "index_owners_on_uuid", unique: true
  end

  create_table "properties", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.bigint "owner_id"
    t.text "address"
    t.boolean "active"
    t.decimal "price", precision: 8, scale: 2
    t.string "property_num"
    t.string "property_doc_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_properties_on_owner_id"
    t.index ["property_num"], name: "index_properties_on_property_num", unique: true
  end

  create_table "receipts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "rental_id"
    t.string "uuid", default: "4ebc021a-dc6e-4753-ad30-f5beac58d4ee"
    t.string "receipt_num"
    t.string "receipt_doc_path"
    t.boolean "sent_email", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rental_id"], name: "index_receipts_on_rental_id"
    t.index ["uuid", "receipt_num"], name: "index_receipts_on_uuid_and_receipt_num", unique: true
  end

  create_table "rentals", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "tenant_id"
    t.bigint "property_id"
    t.integer "year"
    t.integer "month"
    t.boolean "payment", default: false
    t.string "receipt_doc_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_rentals_on_property_id"
    t.index ["tenant_id"], name: "index_rentals_on_tenant_id"
  end

  create_table "sessions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.string "ip_address"
    t.string "platform"
    t.integer "start_time"
    t.integer "exp_time"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sessions_on_user_id"
  end

  create_table "tenants", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "tel_num"
    t.integer "ic_num"
    t.string "tenant_num"
    t.text "address"
    t.string "occupation"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "property_id"
    t.index ["email", "ic_num"], name: "index_tenants_on_email_and_ic_num", unique: true
    t.index ["property_id"], name: "index_tenants_on_property_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "name"
    t.string "tel_num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
