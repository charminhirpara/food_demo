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
  
    private
  
    def message_params
      params.require(:order).permit(:user_id, :phone_no, :email, :address, :landmark, :city, :sub_total, :discount,
                                    :total)
    end
  end
