Rails.application.routes.draw do
  get 'winners/index'
  get 'winners/new'
  get '/users', to: 'users#index'
  devise_for :users
  root 'home#index'
  resources :teams
  resources :matches
  resources :tournaments
  resources :players
  resources :memberships
  resources :joinrequests
  resources :winners
  resources :results
 # admin routes
 mount RailsAdmin::Engine => "/admin", as: "rails_admin"
 #document routes
 get 'home/document' => 'home#document'
 get 'home/contact' => 'home#contact'
 post 'tournaments/new' => 'tournaments#new'

end
