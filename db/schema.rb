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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120512001549) do

  create_table "chats", :force => true do |t|
    t.string   "kind"
    t.string   "fullname"
    t.string   "email_address"
    t.string   "city"
    t.string   "region"
    t.string   "country"
    t.string   "country_code"
    t.string   "organization"
    t.string   "ip"
    t.string   "browser"
    t.string   "operating_system"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "olark_id"
    t.string   "visitor_id"
    t.string   "data"
  end

  create_table "tests", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "webhooks", :force => true do |t|
    t.string   "serialize"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
