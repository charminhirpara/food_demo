# frozen_string_literal: true

class OrderFood < ApplicationRecord
  belongs_to :order
  belongs_to :food

  validates :mrp, :discount, :price, :quantity, :total, presence: true

  def self.ransackable_attributes(_auth_object = nil)
    %w[created_at discount food_id id mrp order_id price quantity total updated_at]
  end
end
