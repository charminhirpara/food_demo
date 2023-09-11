# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :user
  has_many :order_foods, :dependent => :delete_all
  validates :sub_total, :total, numericality: { greater_than_or_equal_to: 1 }
  def self.ransackable_attributes(_auth_object = nil)
    %w[address city created_at discounnt email id phone_number sub_total total updated_at
       user_id]
  end
  def self.ransackable_associations(auth_object = nil)
    ["order_foods", "user"]
  end
end
