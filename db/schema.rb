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

ActiveRecord::Schema.define(:version => 20120430165955) do

  create_table "hosts", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "username"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "encrypted_password"
    t.string   "salt"
    t.boolean  "admin"
  end

  create_table "parties", :force => true do |t|
    t.integer  "host_id"
    t.string   "name"
    t.date     "date"
    t.string   "location"
    t.time     "start_time"
    t.time     "end_time"
    t.string   "desription"
    t.date     "rsvp_date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "parties", ["host_id", "created_at"], :name => "index_parties_on_host_id_and_created_at"

end
