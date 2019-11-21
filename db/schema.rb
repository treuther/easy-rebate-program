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

ActiveRecord::Schema.define(version: 20191121222327) do

  create_table "product_rebates", force: :cascade do |t|
    t.integer  "product_id", null: false
    t.integer  "rebate_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_rebates_on_product_id"
    t.index ["rebate_id"], name: "index_product_rebates_on_rebate_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "product_name"
    t.integer  "quantity",     default: 0
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "rebates", force: :cascade do |t|
    t.string   "rebate_name"
    t.text     "description"
    t.integer  "status",      default: 0
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "refunds", force: :cascade do |t|
    t.integer  "amount",     default: 0
    t.integer  "user_id",                null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["user_id"], name: "index_refunds_on_user_id"
  end

  create_table "user_rebates", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "rebate_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rebate_id"], name: "index_user_rebates_on_rebate_id"
    t.index ["user_id"], name: "index_user_rebates_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.boolean  "admin",           default: false, null: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
