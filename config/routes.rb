Rails.application.routes.draw do 
  
  post '/businesses/:business_id/notes', to: 'notes#create'
  root("neighborhoods#index")
  

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#delete'
  delete '/notes/:id', to: 'notes#delete', as: 'delete_note'

  
  resources :users, only: [:new, :create, :show, :index, :edit, :update]
  resources :neighborhoods, only: [:index, :show]
  
  resources :businesses, only: [:index, :show] do
    resources :comments
    resources :notes, only: [:index, :new, :create, :edit, :update]
end
   resources :notes, only: [:index, :new, :create, :edit, :update] do 
        resources :comments
end
end

