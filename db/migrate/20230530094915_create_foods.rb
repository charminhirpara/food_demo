# frozen_string_literal: true

class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.text :description
      t.references :category, null: false, foreign_key: true
      t.float :mrp
      t.float :discount
      t.float :price

      t.timestamps
    end
  end
end
