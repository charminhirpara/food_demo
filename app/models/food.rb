class Food < ApplicationRecord
   has_many_attached :images
  
  belongs_to :category

  has_many :orders, through: :order_foods
  has_many :carts

  after_create :call_job

  def self.ransackable_attributes(auth_object = nil)
    ["category_id", "created_at", "description", "discount", "id", "mrp", "name", "price", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["carts", "category", ]
  end

  def call_job
    ExampleJob.perform_later(a: 10, b: 20)
  end
  
  def locale
    if params[:locale].present?
      session[:mylocale] =  params[:locale]
  end
     redirect_to root_path
  end

end
