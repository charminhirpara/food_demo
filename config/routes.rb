Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

 
  
  devise_for :uses, controllers: {
    sessions: 'uses/sessions'
  }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "homes#index"


  resources :profiles ,only:[:index,:edit,:new]
  resources :orders, only:[:index,:show]
  resources :checkouts , only:[:index]
  resources :foods , only:[:index]
  resources :homes , only:[:index]
  resources :carts
 
end
