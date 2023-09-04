# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :orders
  has_many :carts

  validates :email, uniqueness: true
  def self.ransackable_attributes(_auth_object = nil)
    %w[address city country created_at email encrypted_password first_name id landmark
       last_name middle_name phone_no pin_code remember_created_at reset_password_sent_at reset_password_token state updated_at]
  end

  def self.ransackable_associations(_auth_object = nil)
    %w[carts orders]
  end
end
