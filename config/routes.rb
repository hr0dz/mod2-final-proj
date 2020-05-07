Rails.application.routes.draw do 
  #resources :notes, only: [:index, :show, :edit, :update] do 
    #resources :comments
  #end
  #resources :notes, only: [:index, :show]
  #resources :users, only: [:new, :create, :show, :index, :edit, :update]
  #resources :neighborhoods, only: [:index, :show]
  #resources :businesses, only: [:index, :show] do

    #resources :notes, only: [:new, :create, :edit, :update]
   # resources :comments
  #end
  # get '/businesses/:business_id/notes/new', to: 'notes#new', as: 'new_note'
  # post '/businesses/:business_id/notes', to: 'notes#create'
  # post '/notes', to: 'notes#create'
  # get '/businesses/:business_id/notes/new', to: 'notes#new', as: 'new_note'
  post '/businesses/:business_id/notes', to: 'notes#create'
  root("neighborhoods#index")
  # post '/notes', to: 'notes#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#delete'
  delete '/notes/:id', to: 'notes#delete', as: 'delete_note'

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

