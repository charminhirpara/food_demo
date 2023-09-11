# frozen_string_literal: true

class Checkout < ApplicationRecord
  belongs_to :cart
  belongs_to :product
  
    product.price * quantity
  end
end
