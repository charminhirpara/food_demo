class FoodsController < ApplicationController 
  def index
    @pagy, @foods  = pagy(Food.order(created_at: :desc), items: 9)
  end
end