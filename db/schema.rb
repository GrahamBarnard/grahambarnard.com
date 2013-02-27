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

ActiveRecord::Schema.define(:version => 20130227155037) do

  create_table "blogs", :force => true do |t|
    t.string   "title"
    t.text     "post"
    t.boolean  "published"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.datetime "posted_at"
    t.boolean  "featured"
  end

  create_table "educations", :force => true do |t|
    t.date     "start_date"
    t.date     "finish_date"
    t.string   "school"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "employments", :force => true do |t|
    t.date     "start_date"
    t.date     "finish_date"
    t.string   "position"
    t.text     "description"
    t.string   "website"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.boolean  "published"
  end

  create_table "skills", :force => true do |t|
    t.string   "name"
    t.integer  "skilltype_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "rating"
  end

  create_table "skilltypes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "testimonials", :force => true do |t|
    t.string   "author"
    t.string   "avatar"
    t.boolean  "published"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "avatar"
    t.string   "fullname"
    t.string   "title"
    t.string   "website"
    t.string   "email"
    t.string   "phone"
    t.text     "welcome"
    t.string   "twitter"
    t.string   "github"
    t.string   "linkedin"
  end

  create_table "webimages", :force => true do |t|
    t.string   "url"
    t.string   "title"
    t.text     "caption"
    t.integer  "imageorder"
    t.integer  "website_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "websites", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.string   "description"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.boolean  "published"
    t.string   "imageurl"
    t.string   "previewimageurl"
    t.string   "shortdescription"
  end

end
