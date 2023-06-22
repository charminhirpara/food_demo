class Food < ApplicationRecord
  belongs_to :category
  has_many :order_food
  has_many :carts


end
