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

ActiveRecord::Schema.define(version: 2022_02_07_124615) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.text "content", null: false
    t.bigint "user_id", null: false
    t.bigint "question_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["user_id"], name: "index_answers_on_user_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name", null: false
    t.string "phone_number"
    t.string "fax_number"
    t.string "address"
    t.text "remarks"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "groupings", force: :cascade do |t|
    t.bigint "team_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["team_id"], name: "index_groupings_on_team_id"
    t.index ["user_id", "team_id"], name: "index_groupings_on_user_id_and_team_id", unique: true
    t.index ["user_id"], name: "index_groupings_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "code", null: false
    t.string "name", null: false
    t.text "remarks"
    t.integer "regular_price"
    t.integer "selling_price"
    t.integer "cost_price"
    t.bigint "user_id", null: false
    t.bigint "team_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["code"], name: "index_products_on_code", unique: true
    t.index ["team_id"], name: "index_products_on_team_id"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "purchase_details", force: :cascade do |t|
    t.bigint "quantity", null: false
    t.bigint "purchase_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_purchase_details_on_product_id"
    t.index ["purchase_id"], name: "index_purchase_details_on_purchase_id"
  end

  create_table "purchases", force: :cascade do |t|
    t.date "date_at", null: false
    t.integer "inputter", null: false
    t.integer "total"
    t.bigint "supplier_id", null: false
    t.bigint "user_id", null: false
    t.bigint "team_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["supplier_id"], name: "index_purchases_on_supplier_id"
    t.index ["team_id"], name: "index_purchases_on_team_id"
    t.index ["user_id"], name: "index_purchases_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "title", null: false
    t.text "content", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_questions_on_user_id"
  end

  create_table "sale_details", force: :cascade do |t|
    t.bigint "quantity", null: false
    t.bigint "sale_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_sale_details_on_product_id"
    t.index ["sale_id"], name: "index_sale_details_on_sale_id"
  end

  create_table "sales", force: :cascade do |t|
    t.date "date_at", null: false
    t.integer "inputter", null: false
    t.integer "total"
    t.bigint "client_id", null: false
    t.bigint "user_id", null: false
    t.bigint "team_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_sales_on_client_id"
    t.index ["team_id"], name: "index_sales_on_team_id"
    t.index ["user_id"], name: "index_sales_on_user_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name", null: false
    t.string "phone_number"
    t.string "fax_number"
    t.string "address"
    t.text "remarks"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name", null: false
    t.text "remarks"
    t.integer "chief", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_teams_on_user_id"
  end

  create_table "teams_clients", force: :cascade do |t|
    t.bigint "team_id", null: false
    t.bigint "client_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_teams_clients_on_client_id"
    t.index ["team_id"], name: "index_teams_clients_on_team_id"
  end

  create_table "teams_suppliers", force: :cascade do |t|
    t.bigint "team_id", null: false
    t.bigint "supplier_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["supplier_id"], name: "index_teams_suppliers_on_supplier_id"
    t.index ["team_id"], name: "index_teams_suppliers_on_team_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name", null: false
    t.string "phone_number", null: false
    t.string "nickname", null: false
    t.boolean "admin", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["nickname"], name: "index_users_on_nickname", unique: true
    t.index ["phone_number"], name: "index_users_on_phone_number", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "answers", "users"
  add_foreign_key "groupings", "teams"
  add_foreign_key "groupings", "users"
  add_foreign_key "products", "teams"
  add_foreign_key "products", "users"
  add_foreign_key "purchase_details", "products"
  add_foreign_key "purchase_details", "purchases"
  add_foreign_key "purchases", "suppliers"
  add_foreign_key "purchases", "teams"
  add_foreign_key "purchases", "users"
  add_foreign_key "questions", "users"
  add_foreign_key "sale_details", "products"
  add_foreign_key "sale_details", "sales"
  add_foreign_key "sales", "clients"
  add_foreign_key "sales", "teams"
  add_foreign_key "sales", "users"
  add_foreign_key "teams", "users"
  add_foreign_key "teams_clients", "clients"
  add_foreign_key "teams_clients", "teams"
  add_foreign_key "teams_suppliers", "suppliers"
  add_foreign_key "teams_suppliers", "teams"
end
