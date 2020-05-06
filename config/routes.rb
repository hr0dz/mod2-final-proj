Rails.application.routes.draw do 
  resources :notes, only: [:index, :show, :edit, :update]
  #resources :notes, only: [:index, :show]
  resources :users, only: [:new, :create, :show, :index, :edit, :update]
  resources :neighborhoods, only: [:index, :show]
  resources :businesses, only: [:index, :show] do

  resources :notes, only: [:new, :create, :edit, :update]
  end
  # get '/businesses/:business_id/notes/new', to: 'notes#new', as: 'new_note'
  # post '/businesses/:business_id/notes', to: 'notes#create'
  # post '/notes', to: 'notes#create'

  delete '/delete', to: 'notes#delete', as: 'delete_note'

  # get '/businesses/:business_id/notes/new', to: 'notes#new', as: 'new_note'
  # post '/businesses/:business_id/notes', to: 'notes#create'
  # post '/notes', to: 'notes#create'
end 
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end

