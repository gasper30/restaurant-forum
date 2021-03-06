Rails.application.routes.draw do
 
 devise_for :users
  resources :restaurants, only: [:index, :show]
  root "restaurants#index" 

  resources :categories, only: :show

  namespace :admin do
    resources :restaurants
    resources :categories
    root "restaurants#index"
  end
end