Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users

  resources :products, only: [:index, :show, :new]
  resources :carts, only: [:create, :index]
end
