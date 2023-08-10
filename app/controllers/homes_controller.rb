class HomesController < ApplicationController 
    
    def index  
      @pagy,@foods =pagy( Food.order(created_at: :desc),foods:6)
       if params[:food_id].present?
        @foods = @foods.where(category_id: params[:category_id])
       end
       if params[:search_key]
        @foods = Food.where("name LIKE ? OR description LIKE ?", 
        "%#{params[:search_key]}%", "%#{params[:search_key]}%")
      else
        @foods = Food.all
      end
    end
  
  
   
    
end