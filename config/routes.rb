Rails.application.routes.draw do
  resources :froms
  resources :demos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :foods, only: :index
 
end
