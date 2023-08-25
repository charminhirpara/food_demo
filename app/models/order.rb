# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :user

  validates :email, uniqueness: true
  validates :user, :city, :sub_total, :discounnt, :total, presence: true
  validates :phone_number, length: { is: 10 }, numericality: true
  validates :address, length: { is: 150 }, numericality: true
end
