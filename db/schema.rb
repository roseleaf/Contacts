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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120113205925) do

  create_table "books", :force => true do |t|
    t.string   "title"
    t.string   "date_listed"
    t.string   "email"
    t.string   "customer"
    t.string   "shelf"
    t.string   "weight"
    t.string   "condition"
    t.string   "ISBN"
    t.decimal  "price",             :precision => 10, :scale => 0
    t.decimal  "a_payment",         :precision => 10, :scale => 0
    t.decimal  "my_cost",           :precision => 10, :scale => 0
    t.string   "cost_plus_postage"
    t.string   "postage"
    t.string   "profit"
    t.string   "pay_period"
    t.string   "o_s"
    t.string   "date_sold"
    t.string   "ship_country"
    t.string   "obtained"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
