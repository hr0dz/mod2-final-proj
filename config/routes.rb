Rails.application.routes.draw do 
  # get 'comments/new'
  # get 'comments/create'
  # get 'comments/edit'
  # get 'comments/update'
  # get 'comments/destroy'
  resources :notes, only: [:index, :show, :edit, :update]
  resources :users, only: [:new, :create, :show, :index, :edit, :update]
  resources :neighborhoods, only: [:index, :show]
  resources :businesses, only: [:index, :show, :new]
  resources :businesses, only: [:index, :show] do

  root("neighborhoods#index")

  resources :notes, only: [:new, :create] do 
  resources :comments, only: [:new, :create, :edit, :update, :delete]
end


  resources :notes, only: [:new, :create, :edit, :update]
  # get '/businesses/:business_id/notes/new', to: 'notes#new', as: 'new_note'
  #post '/businesses/:business_id/notes', to: 'notes#create'
   #post '/notes', to: 'notes#create'
  # post '/businesses/:business_id/notes', to: 'notes#create'
  # post '/notes', to: 'notes#create'

  delete '/notes/:id', to: 'notes#delete', as: 'delete_note'

  # get '/businesses/:business_id/notes/new', to: 'notes#new', as: 'new_note'
  post '/businesses/:business_id/notes', to: 'notes#create'
  # post '/notes', to: 'notes#create'

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#delete'
end

