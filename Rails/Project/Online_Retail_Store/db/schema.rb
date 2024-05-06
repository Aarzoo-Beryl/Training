# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_05_06_064052) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.integer "house_number"
    t.integer "sector"
    t.string "city"
    t.string "state"
    t.string "country"
    t.integer "pincode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "customers_id"
    t.index ["customers_id"], name: "index_addresses_on_customers_id"
  end

  create_table "bills", force: :cascade do |t|
    t.string "date"
    t.string "shipping_address"
    t.float "total_bill"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "customers_id"
    t.index ["customers_id"], name: "index_bills_on_customers_id"
  end

  create_table "brands", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_summaries", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "products_id"
    t.bigint "bills_id"
    t.index ["bills_id"], name: "index_order_summaries_on_bills_id"
    t.index ["products_id"], name: "index_order_summaries_on_products_id"
  end

  create_table "payment_types", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.string "date"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "bills_id"
    t.bigint "customers_id"
    t.bigint "payment_types_id"
    t.index ["bills_id"], name: "index_payments_on_bills_id"
    t.index ["customers_id"], name: "index_payments_on_customers_id"
    t.index ["payment_types_id"], name: "index_payments_on_payment_types_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "brands_id"
    t.bigint "seller_id"
    t.bigint "categories_id"
    t.index ["brands_id"], name: "index_products_on_brands_id"
    t.index ["categories_id"], name: "index_products_on_categories_id"
    t.index ["seller_id"], name: "index_products_on_seller_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "products_id"
    t.bigint "customers_id"
    t.index ["customers_id"], name: "index_reviews_on_customers_id"
    t.index ["products_id"], name: "index_reviews_on_products_id"
  end

  create_table "sellers", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "addresses", "customers", column: "customers_id"
  add_foreign_key "bills", "customers", column: "customers_id"
  add_foreign_key "order_summaries", "bills", column: "bills_id"
  add_foreign_key "order_summaries", "products", column: "products_id"
  add_foreign_key "payments", "bills", column: "bills_id"
  add_foreign_key "payments", "customers", column: "customers_id"
  add_foreign_key "payments", "payment_types", column: "payment_types_id"
  add_foreign_key "products", "brands", column: "brands_id"
  add_foreign_key "products", "categories", column: "categories_id"
  add_foreign_key "products", "sellers"
  add_foreign_key "reviews", "customers", column: "customers_id"
  add_foreign_key "reviews", "products", column: "products_id"
end
