# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'products#index'

  resources :products, only: [:index, :show]
  resource :cart, only: [:show, :update]
end
