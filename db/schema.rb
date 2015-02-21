# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150220053636) do

  create_table "goal_transactions", force: :cascade do |t|
    t.integer  "goal_id"
    t.string   "description"
    t.date     "transactionDate"
    t.float    "amount"
    t.integer  "transactionType"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "goal_transactions", ["goal_id"], name: "index_goal_transactions_on_goal_id"

  create_table "goals", force: :cascade do |t|
    t.string   "description"
    t.date     "startDate"
    t.date     "endDate"
    t.integer  "frequency"
    t.boolean  "isRepeatable"
    t.float    "expectedAmount"
    t.integer  "importanceRate"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "inflation_rates", force: :cascade do |t|
    t.integer  "month"
    t.integer  "year"
    t.float    "percent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
