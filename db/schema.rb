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

ActiveRecord::Schema.define(:version => 20130731004547) do

  create_table "authorizations", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0
    t.integer  "attempts",   :default => 0
    t.text     "handler"
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "messages", :force => true do |t|
    t.string   "topic"
    t.text     "mess"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "sender"
  end

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.string   "topic"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "microposts", ["user_id", "created_at"], :name => "index_microposts_on_user_id_and_created_at"

  create_table "posts", :force => true do |t|
    t.string   "topic"
    t.text     "body"
    t.integer  "creator_id"
    t.date     "created"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "relationships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "team_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "relationships", ["team_id", "user_id"], :name => "index_relationships_on_team_id_and_user_id", :unique => true
  add_index "relationships", ["team_id"], :name => "index_relationships_on_team_id"
  add_index "relationships", ["user_id"], :name => "index_relationships_on_user_id"

  create_table "reports", :force => true do |t|
    t.date     "dayof"
    t.string   "winner"
    t.string   "teams"
    t.integer  "creator_id"
    t.text     "desc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "game1"
    t.string   "game2"
    t.string   "game3"
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.string   "teamcapt"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
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
    t.string   "status"
    t.boolean  "verify",      :default => false, :null => false
    t.boolean  "tos"
    t.string   "sec_name"
    t.string   "sec_play"
    t.string   "sec_email"
    t.string   "third_name"
    t.string   "third_play"
    t.string   "third_email"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "password_confirmation"
    t.boolean  "admin",                  :default => false
    t.string   "phone"
    t.integer  "team_id"
    t.string   "auth_token"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.string   "uid"
    t.string   "provider"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
