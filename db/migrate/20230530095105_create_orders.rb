# frozen_string_literal: true

class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.string :phone_number
      t.string :email
      t.string :address
      t.string :city
      t.float :sub_total
      t.float :discounnt
      t.float :total

      t.timestamps
    end
  end
end
zzz