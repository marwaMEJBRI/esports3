Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :teams
  resources :matches
  resources :tournaments
 
end
