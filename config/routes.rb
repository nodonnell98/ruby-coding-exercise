# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'products#index'

  resources :products, only: [:index, :show]
  resource :cart, only: [:show, :update]

  post '/add_to_cart/:product_id', to: 'carts#add_to_cart', as: 'add_to_cart'
  get '/checkout', to: 'checkout#show', as: 'checkout'
  post '/complete_purchase', to: 'checkout#complete_purchase'
end
