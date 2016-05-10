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

ActiveRecord::Schema.define(version: 20160505133547) do

  create_table "animes", force: :cascade do |t|
    t.string   "title"
    t.string   "title_short1"
    t.string   "title_short2"
    t.string   "title_short3"
    t.string   "twitter_account"
    t.string   "public_url"
    t.boolean  "sex"
    t.string   "twitter_hash_tag"
    t.integer  "sequel"
    t.integer  "cours_id",         limit: 8
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "cours", force: :cascade do |t|
    t.integer  "year"
    t.integer  "cours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hellos", force: :cascade do |t|
    t.string   "greet"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
