class Order < ApplicationRecord
  belongs_to :user
  has_many :order_food
  validates :email, uniqueness: true
  validates :user,:city,:sub_total,:discounnt,:total,presence: true
  validates :phone_number, length: { is: 10 },numericality: true
  validates :address, length: { is: 150 },numericality: true
end
