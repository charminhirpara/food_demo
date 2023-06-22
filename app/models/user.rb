class User < ApplicationRecord
    has_many :orders
    has_many :carts
    validates :name,:city,:state,:country, presence: true
    validates :email, uniqueness: true
    validates :zipcode, length: { is: 6 }
    validates :phone_number, length: { is: 10 },numericality: true
    validates :address, length: { is: 150 },numericality: true
end
