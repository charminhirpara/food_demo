
class CartsController < ApplicationController
  before_action :authenticate_user!, only: :index

  def index
    @carts = current_user.carts.all
  end

  def new
    @cart = Cart.new
    @total = current_user.orders
  end

  def create
    @cart = current_user.carts.new(food_id: params[:food_id], quantity: 1)
    if @cart.save
      redirect_to carts_path
    else
      redirect_to foods_path
    end
  end

  def increse_qty
    @cart = current_user.carts.find_by(id: params[:id])
    @cart.update(quantity: params[:qty])
    redirect_to carts_path
  end

  def de_qty
    @cart = current_user.carts.find_by(id: params[:id])
  end

  def destroy
    @cart = current_user.carts.find_by(id: params[:id])
    @cart.destroy
    redirect_to carts_url
  end
end