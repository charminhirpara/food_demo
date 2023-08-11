class CartsController < ApplicationController 
    before_action :authenticate_user!,only: :index
    def show
        @cart = current_cart
       end
   
    
end