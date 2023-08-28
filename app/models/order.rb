# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :user
  def self.ransackable_attributes(auth_object = nil)
    ["address", "city", "created_at", "discounnt", "email", "id", "phone_number", "sub_total", "total", "updated_at", "user_id"]
  end
  end
