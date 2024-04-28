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

ActiveRecord::Schema[7.1].define(version: 2024_04_28_193311) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "publication_year"
    t.integer "quantity_available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "genre"
    t.index ["title"], name: "index_books_on_title"
  end

  create_table "books_memebers", id: false, force: :cascade do |t|
    t.bigint "book_id"
    t.bigint "memeber_id"
  end

  create_table "borrow_log", id: false, force: :cascade do |t|
    t.bigint "book_id"
    t.bigint "memeber_id"
  end

  create_table "memebers", force: :cascade do |t|
    t.string "name"
    t.string "email", null: false
    t.string "address"
    t.string "phone_number", null: false
    t.string "membership_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "unique_emails", unique: true
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "address"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "table_genres", force: :cascade do |t|
    t.string "name"
    t.string "total_books_available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.string "checkout_date"
    t.string "return_date"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "books_id"
    t.bigint "memebers_id"
    t.decimal "late_submittion_fine", precision: 5, scale: 2
    t.index ["books_id"], name: "index_transactions_on_books_id"
    t.index ["memebers_id"], name: "index_transactions_on_memebers_id"
  end

  add_foreign_key "transactions", "books", column: "books_id"
  add_foreign_key "transactions", "memebers", column: "memebers_id"
end
