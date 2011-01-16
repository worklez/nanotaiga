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

ActiveRecord::Schema.define(:version => 20110116015102) do

  create_table "comments", :force => true do |t|
    t.string   "title",            :limit => 50, :default => ""
    t.text     "comment"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["commentable_id"], :name => "index_comments_on_commentable_id"
  add_index "comments", ["commentable_type"], :name => "index_comments_on_commentable_type"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "firm_products", :force => true do |t|
    t.string   "name"
    t.string   "site"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "firm_profile_id"
  end

  create_table "firm_profile_atmospheres", :force => true do |t|
    t.text     "atmosphere"
    t.integer  "firm_profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "firm_profile_connections", :force => true do |t|
    t.integer  "source_firm_id"
    t.integer  "target_firm_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "firm_profile_names", :force => true do |t|
    t.string   "name"
    t.integer  "firm_profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "firm_profile_origin_dates", :force => true do |t|
    t.datetime "originated"
    t.integer  "firm_profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "firm_profile_sites", :force => true do |t|
    t.string   "site"
    t.integer  "firm_profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "firm_profile_subjects", :force => true do |t|
    t.text     "subject"
    t.integer  "firm_profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "firm_profile_technologies", :force => true do |t|
    t.text     "technologies"
    t.integer  "firm_profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "firm_profiles", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "firm_profiles_firm_types", :id => false, :force => true do |t|
    t.integer  "firm_profile_id"
    t.integer  "firm_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "firm_types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "methodologies", :force => true do |t|
    t.integer  "methodology_base_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "firm_profile_id"
  end

  create_table "methodology_bases", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "office_bonus", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "office_id"
  end

  create_table "offices", :force => true do |t|
    t.string   "city"
    t.string   "address"
    t.integer  "firm_profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.integer  "author_id"
    t.integer  "firm_profile_id"
    t.string   "subject"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
