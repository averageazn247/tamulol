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

ActiveRecord::Schema.define(:version => 20130626211318) do

  create_table "relationships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "team_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "relationships", ["team_id", "user_id"], :name => "index_relationships_on_team_id_and_user_id", :unique => true
  add_index "relationships", ["team_id"], :name => "index_relationships_on_team_id"
  add_index "relationships", ["user_id"], :name => "index_relationships_on_user_id"

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.string   "teamcapt"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "player1"
    t.string   "player2"
    t.string   "player3"
    t.string   "player4"
    t.string   "player5"
    t.string   "player6"
    t.string   "player7"
    t.string   "name1"
    t.string   "name2"
    t.string   "name3"
    t.string   "name4"
    t.string   "name5"
    t.string   "name6"
    t.string   "name7"
    t.string   "email1"
    t.string   "email2"
    t.string   "email3"
    t.string   "email4"
    t.string   "email5"
    t.string   "email6"
    t.string   "email7"
    t.text     "bio"
    t.string   "tag"
    t.integer  "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "password_confirmation"
    t.boolean  "admin",                  :default => false
    t.string   "password_disgest"
    t.string   "phone"
    t.integer  "team_id"
    t.string   "auth_token"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
  end

end
