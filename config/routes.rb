Rails.application.routes.draw do 
  resources :users, only: [:new, :create, :show, :index]
  resources :neighborhoods, only: [:index, :show]
  
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
end

