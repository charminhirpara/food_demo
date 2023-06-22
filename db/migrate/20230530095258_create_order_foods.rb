class CreateOrderFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :order_foods do |t|
      t.references :order, null: false, foreign_key: true
      t.references :food, null: false, foreign_key: true
      t.float :mrp
      t.float :discount
      t.float :price
      t.float :quantity
      t.float :total

      t.timestamps
    end
  end
end
