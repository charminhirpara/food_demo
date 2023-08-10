class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :food

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "food_id", "id", "quantity", "updated_at", "user_id"]
  end
end
