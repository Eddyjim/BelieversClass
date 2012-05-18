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

ActiveRecord::Schema.define(:version => 20120516193416) do

  create_table "administrators", :force => true do |t|
    t.string   "uname"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "asistences", :force => true do |t|
    t.date     "dateOfClass"
    t.string   "leson"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "assignments", :force => true do |t|
    t.integer  "group_id"
    t.date     "duedate"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "groups", :force => true do |t|
    t.integer  "teacher_id"
    t.string   "level"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "uname"
    t.string   "name"
    t.string   "lastname"
    t.integer  "cc"
    t.integer  "phone"
    t.string   "email"
    t.string   "address"
    t.integer  "group_id"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teachers", :force => true do |t|
    t.string   "uname"
    t.string   "name"
    t.string   "lastname"
    t.integer  "phone"
    t.string   "email"
    t.integer  "group_id"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "uploads", :force => true do |t|
    t.integer  "assignment_id"
    t.string   "student_id"
    t.string   "file"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
