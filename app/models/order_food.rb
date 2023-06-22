class OrderFood < ApplicationRecord
  belongs_to :order
  belongs_to :food
  validates :mrp,:discount,:price,:quantity,:total,presence: true

  
end
