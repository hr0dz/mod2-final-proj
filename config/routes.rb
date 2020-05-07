Rails.application.routes.draw do 
  root("neighborhoods#index")

  delete '/notes/:id', to: 'notes#delete', as: 'delete_note'
  # get '/businesses/:business_id/notes/new', to: 'notes#new', as: 'new_note'
  post '/businesses/:business_id/notes', to: 'notes#create'
  # post '/notes', to: 'notes#create'

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#delete'

  resources :notes, only: [:index, :show, :edit, :update]
  resources :users, only: [:new, :create, :show, :index, :edit, :update]
  resources :neighborhoods, only: [:index, :show]
  resources :businesses, only: [:index, :show, :new]
  resources :businesses, only: [:index, :show] do

  resources :notes, only: [:new, :create] do 
  resources :comments, only: [:new, :create, :edit, :update, :delete]
end

end
end

