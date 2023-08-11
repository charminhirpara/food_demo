Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "homes#index"
  
  post '/set-locale' , to: "homes#locales"
  resources :profiles ,only:[:index,:edit,:new]
  resources :orders, only:[:index,:show]
  resources :checkouts , only:[:index]
  get 'foods', to: "foods#index"
  resources :foods 
  resources :order_foods 
  resources :carts
  resources :profiles

 
end
