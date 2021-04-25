Rails.application.routes.draw do
  get '/users', to: 'users#index'
  devise_for :users
  root 'home#index'
  resources :teams
  resources :matches
  resources :tournaments
  resources :players
  resources :memberships
  resources :joinrequests
  
 # admin routes
 mount RailsAdmin::Engine => "/admin", as: "rails_admin"
end
