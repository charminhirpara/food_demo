# frozen_string_literal: true

class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :food

  def self.ransackable_attributes(_auth_object = nil)
    %w[created_at food_id id quantity updated_at user_id]
  end
end
