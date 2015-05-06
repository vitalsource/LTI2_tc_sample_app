class TcCollapseData < ActiveRecord::Migration
  def up
    create_table "active_admin_comments", force: true do |t|
      t.string   "namespace"
      t.text     "body"
      t.string   "resource_id",   null: false
      t.string   "resource_type", null: false
      t.integer  "author_id"
      t.string   "author_type"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

    create_table "admin_users", force: true do |t|
      t.string   "email",                  default: "", null: false
      t.string   "role"
      t.string   "encrypted_password",     default: "", null: false
      t.string   "reset_password_token"
      t.datetime "reset_password_sent_at"
      t.datetime "remember_created_at"
      t.integer  "sign_in_count",          default: 0
      t.datetime "current_sign_in_at"
      t.datetime "last_sign_in_at"
      t.string   "current_sign_in_ip"
      t.string   "last_sign_in_ip"
      t.datetime "created_at",                          null: false
      t.datetime "updated_at",                          null: false
      t.string   "user_id"
      t.string   "first_name"
      t.string   "last_name"
      t.string   "mentor"
    end

    add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
    add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

    create_table "courses", force: true do |t|
      t.string   "course_label"
      t.string   "course_title"
      t.datetime "created_at",   null: false
      t.datetime "updated_at",   null: false
    end

    create_table "enrollments", force: true do |t|
      t.integer  "admin_user_id"
      t.integer  "course_id"
      t.string   "role"
      t.datetime "created_at",    null: false
      t.datetime "updated_at",    null: false
    end

    create_table "grade_items", force: true do |t|
      t.integer  "course_id"
      t.string   "label"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end

    create_table "grade_results", force: true do |t|
      t.integer  "link_id"
      t.integer  "admin_user_id"
      t.float    "result",        limit: 24
      t.datetime "created_at",               null: false
      t.datetime "updated_at",               null: false
    end
    
  end
end
