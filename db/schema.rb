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

ActiveRecord::Schema.define(:version => 20110529172531) do

  create_table "badges", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "uid"
    t.string   "imageurl"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
  end

  create_table "badges_users", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "badge_id"
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "mapurl"
    t.text     "description"
    t.text     "tips"
    t.text     "nearby"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations_users", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "location_id"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email",                                                                        :null => false
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token",                                                            :null => false
    t.text     "about",             :default => "An new adventurer to the city of Barcelona!", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "oauth_token"
    t.string   "oauth_secret"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["login"], :name => "index_users_on_login", :unique => true
  add_index "users", ["oauth_token"], :name => "index_users_on_oauth_token"
  add_index "users", ["persistence_token"], :name => "index_users_on_persistence_token", :unique => true

end
