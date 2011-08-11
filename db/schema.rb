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

ActiveRecord::Schema.define(:version => 20110811112150) do

  create_table "educations", :force => true do |t|
    t.string   "school"
    t.string   "homepage"
    t.date     "from"
    t.date     "to"
    t.boolean  "still_student"
    t.string   "degree_no"
    t.text     "description_no"
    t.string   "degree_en"
    t.text     "description_en"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", :force => true do |t|
    t.string   "employer"
    t.string   "homepage"
    t.date     "from"
    t.date     "to"
    t.string   "title_no"
    t.string   "title_en"
    t.text     "description_no"
    t.text     "description_en"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "still_employed"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "auth_token"
    t.string   "name"
    t.text     "about_no"
    t.text     "about_en"
  end

  create_table "volunteer_jobs", :force => true do |t|
    t.string   "organization"
    t.date     "from"
    t.date     "to"
    t.boolean  "still_active"
    t.string   "title_no"
    t.text     "description_no"
    t.string   "title_en"
    t.text     "description_en"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "homepage"
  end

end
