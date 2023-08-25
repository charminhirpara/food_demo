# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'homes#index'

  post '/set-locale', to: 'homes#locales'
  resources :orders, only: %i[index show]
  resources :checkouts, only: [:index]
  get 'foods', to: 'foods#index'
  resources :foods
  resources :order_foods
  post '/carts', to: 'carts#create', as: :add_item
  get '/carts', to: 'carts#index'
  get '/carts/:id', to: 'carts#show'
  delete 'remove_item/carts/:id', to: 'carts#destroy', as: :remove_item
  get '/update', to: 'carts#increse_qty', as: :increse_qty
  get '/profiles', to: 'profiles#index'
  patch '/profiles', to: 'profiles#update'
end
