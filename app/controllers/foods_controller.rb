class FoodsController < ApplicationController 
  def index
    @pagy, @foods  = pagy(Food.order(created_at: :desc), items: 9)

    if params[:name].present?
      @foods = @foods.where("name like ?", "%#{params[:name]}%")
  end
  end
  def show
      @food = Food.find(params[:id])
  end 
  
  def search
    key = "%#{params[:key]}%"
    @foods = Food.where("name LIKE ?", key)
  end
end
