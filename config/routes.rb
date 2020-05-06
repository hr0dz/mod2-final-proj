Rails.application.routes.draw do 
  resources :notes, only: [:index, :show, :edit, :update]
  #resources :notes, only: [:index, :show]
  resources :users, only: [:new, :create, :show, :index, :edit, :update]
  resources :neighborhoods, only: [:index, :show]
  resources :businesses, only: [:index, :show, :new]
  resources :notes, only: [:new, :create, :edit, :update]
  # get '/businesses/:business_id/notes/new', to: 'notes#new', as: 'new_note'
  #post '/businesses/:business_id/notes', to: 'notes#create'
   #post '/notes', to: 'notes#create'
  # get '/businesses/:business_id/notes/new', to: 'notes#new', as: 'new_note'
  post '/businesses/:business_id/notes', to: 'notes#create'
  # post '/notes', to: 'notes#create'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#delete'
end

