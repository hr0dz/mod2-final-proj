Rails.application.routes.draw do 
  resources :notes, only: [:index, :show, :edit, :update]
  resources :users, only: [:new, :create, :show, :index, :edit, :update]
  resources :neighborhoods, only: [:index, :show]
  resources :businesses, only: [:index, :show] do
  resources :notes, only: [:new, :create]
end 
  root("neighborhoods#index")
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end