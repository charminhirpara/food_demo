class HomesController < ApplicationController 
    
   
 
    def locales
      if params[:locale].present?
          session[:mylocale] =  params[:locale]
      end
      redirect_to root_path
     end
  
end