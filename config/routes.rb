Rails.application.routes.draw do

  get 'scores/create'
  get 'scores/index'
  get 'scores/show'
  get 'rounds/index'
  get 'rounds/new'
  get 'rounds/create'
  get 'rounds/edit'
  get 'rounds/show'
  get '/users', to: 'users#index'
  devise_for :users
  root 'home#index'
  resources :teams
  resources :matches
  resources :tournaments
  resources :players
  resources :rounds
  resources :scores
 
end
