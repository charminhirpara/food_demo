#  frozen_string_literal: true
#   :nodoc:

class OrdersController < ApplicationController
  def index
    @orders = Order.all
    @user = current_user
    @carts = current_user.carts.all
  end

  def new
    @order = Order.new
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    sub_total = 0
    current_user.carts.each do |cart|
      sub_total += cart.food.price
    end

@order = current_user.orders.new(
  phone_no: params[:phone_no], email: params[:email], address: params[:address], 
  landmark: params[:landmark], city: params[:city],
  sub_total: sub_total, discount: params[:discount], total = sub_total - params[:discount].to_f
)
if @order.save
  current_user.carts.each do |cart|
    @order.order_food.create(
      item_id: cart.food_id,
      price: cart.food.price,
      discount: cart.food.discount,
    )
  end
  
  current_user.carts.delete_all
  
  OrderMailer.confirmation_email(order_id: @order.id).deliver_now
  
  redirect_to orders_path
else
  redirect_to foods_path
end
  end

  private
  def order_params
    params.require(:order).permit(:user_id, :phone_no, :email, :address, :landmark, :city, :sub_total, :discount,
                                  :total)
  end
end
  end
