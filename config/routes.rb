Rails.application.routes.draw do
  root 'home#index'
  resources :teams
  resources :matches
  resources :tournaments
end
