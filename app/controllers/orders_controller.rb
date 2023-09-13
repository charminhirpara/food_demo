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
    @order_food = current_user.orders.find(params[:id])
  end

  def create
    sub_total = 0
    current_user.carts.each do |cart|
      sub_total += cart.food.price
    end

    @order = current_user.orders.new(
      phone_number: params[:phone_number], email: params[:email], address: params[:address],
       city: params[:city],
      sub_total:,total: sub_total.to_f
    )
    if @order.save
      current_user.carts.each do |cart|
        @order.order_foods.create(
          food_id: cart.food_id,
          mrp: cart.food.mrp,
          discount: cart.food.discount,
          price: cart.food.price,
          quantity: cart.quantity,
          total: cart.food.price * cart.quantity
        )
      end

      current_user.carts.destroy_all

      # OrderMailer.confirmation_email(order_id: @order.id).deliver_now

      redirect_to order_path(@order)
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
