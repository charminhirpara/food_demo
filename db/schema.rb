# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_230_824_113_302) do
  create_table 'active_storage_attachments', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'record_type', null: false
    t.bigint 'record_id', null: false
    t.bigint 'blob_id', null: false
    t.datetime 'created_at', null: false
    t.index ['blob_id'], name: 'index_active_storage_attachments_on_blob_id'
    t.index %w[record_type record_id name blob_id], name: 'index_active_storage_attachments_uniqueness',
                                                    unique: true
  end

  create_table 'active_storage_blobs', force: :cascade do |t|
    t.string 'key', null: false
    t.string 'filename', null: false
    t.string 'content_type'
    t.text 'metadata'
    t.string 'service_name', null: false
    t.bigint 'byte_size', null: false
    t.string 'checksum'
    t.datetime 'created_at', null: false
    t.index ['key'], name: 'index_active_storage_blobs_on_key', unique: true
  end

  create_table 'active_storage_variant_records', force: :cascade do |t|
    t.bigint 'blob_id', null: false
    t.string 'variation_digest', null: false
    t.index %w[blob_id variation_digest], name: 'index_active_storage_variant_records_uniqueness', unique: true
  end

  create_table 'admin_users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_admin_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_admin_users_on_reset_password_token', unique: true
  end

  create_table 'carts', force: :cascade do |t|
    t.integer 'user_id', null: false
    t.integer 'food_id', null: false
    t.float 'quantity'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['food_id'], name: 'index_carts_on_food_id'
    t.index ['user_id'], name: 'index_carts_on_user_id'
  end

  create_table 'categories', force: :cascade do |t|
    t.string 'name'
    t.boolean 'active'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'foods', force: :cascade do |t|
    t.string 'name'
    t.text 'description'
    t.integer 'category_id', null: false
    t.float 'mrp'
    t.float 'discount'
    t.float 'price'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['category_id'], name: 'index_foods_on_category_id'
  end

  create_table 'order_foods', force: :cascade do |t|
    t.integer 'order_id', null: false
    t.integer 'food_id', null: false
    t.float 'mrp'
    t.float 'discount'
    t.float 'price'
    t.float 'quantity'
    t.float 'total'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['food_id'], name: 'index_order_foods_on_food_id'
    t.index ['order_id'], name: 'index_order_foods_on_order_id'
  end

  create_table 'orders', force: :cascade do |t|
    t.integer 'user_id', null: false
    t.string 'phone_number'
    t.string 'email'
    t.string 'address'
    t.string 'city'
    t.float 'sub_total'
    t.float 'discounnt'
    t.float 'total'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['user_id'], name: 'index_orders_on_user_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'first_name'
    t.string 'middle_name'
    t.string 'last_name'
    t.string 'phone_no'
    t.string 'address'
    t.string 'landmark'
    t.string 'city'
    t.string 'state'
    t.string 'country'
    t.string 'pin_code'
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'active_storage_attachments', 'active_storage_blobs', column: 'blob_id'
  add_foreign_key 'active_storage_variant_records', 'active_storage_blobs', column: 'blob_id'
  add_foreign_key 'carts', 'foods'
  add_foreign_key 'carts', 'users'
  add_foreign_key 'foods', 'categories'
  add_foreign_key 'order_foods', 'foods'
  add_foreign_key 'order_foods', 'orders'
  add_foreign_key 'orders', 'users'
end
