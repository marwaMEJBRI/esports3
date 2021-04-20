Rails.application.routes.draw do
  get '/users', to: 'users#index'
  devise_for :users
  root 'home#index'
  resources :teams
  resources :matches
  resources :tournaments
  get "match/:id", to: "matches#show", as: "show_match"

end
