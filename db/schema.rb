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

ActiveRecord::Schema.define(:version => 20130905052424) do

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

  create_table "events", :force => true do |t|
    t.string   "name"
    t.date     "dayof"
    t.text     "desc"
    t.time     "start"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "type"
  end

  create_table "members", :force => true do |t|
    t.string   "email"
    t.string   "name"
    t.boolean  "paid"
    t.string   "year"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

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

  create_table "players", :force => true do |t|
    t.text     "diamond"
    t.text     "plat"
    t.text     "gold"
    t.text     "silver"
    t.text     "bronze"
    t.text     "unranked"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "topic"
    t.text     "body"
    t.integer  "creator_id"
    t.date     "created"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ranks", :force => true do |t|
    t.string   "team1"
    t.string   "team2"
    t.string   "team3"
    t.string   "team4"
    t.string   "team5"
    t.string   "team6"
    t.string   "team7"
    t.string   "team8"
    t.string   "team9"
    t.string   "team10"
    t.string   "team11"
    t.string   "team12"
    t.string   "team13"
    t.string   "team14"
    t.string   "team15"
    t.string   "team16"
    t.string   "team17"
    t.string   "team18"
    t.string   "team19"
    t.string   "team20"
    t.string   "team21"
    t.string   "team22"
    t.string   "team23"
    t.string   "team24"
    t.string   "team25"
    t.string   "team26"
    t.string   "team27"
    t.string   "team28"
    t.string   "team29"
    t.string   "team30"
    t.string   "team31"
    t.string   "team32"
    t.string   "team33"
    t.string   "team34"
    t.string   "team35"
    t.string   "team36"
    t.string   "team37"
    t.string   "team38"
    t.string   "team39"
    t.string   "team40"
    t.string   "team41"
    t.string   "team42"
    t.string   "team43"
    t.string   "team44"
    t.string   "team45"
    t.string   "team46"
    t.string   "team47"
    t.string   "team48"
    t.string   "team49"
    t.string   "team50"
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
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "game1"
    t.string   "game2"
    t.string   "game3"
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
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
    t.boolean  "verify",      :default => false
    t.boolean  "tos"
    t.string   "sec_name"
    t.string   "sec_play"
    t.string   "sec_email"
    t.string   "third_name"
    t.string   "third_play"
    t.string   "third_email"
    t.string   "teamelo"
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
    t.string   "password_digest"
    t.string   "remember_token"
    t.string   "uid"
    t.string   "provider"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
