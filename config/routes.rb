
Rails.application.routes.draw do 
  resources :notes, only: [:index, :show, :edit, :update]
  #resources :notes, only: [:index, :show]
  resources :users, only: [:new, :create, :show, :index]
  resources :neighborhoods, only: [:index, :show]
  resources :businesses, only: [:index, :show]
  resources :businesses do
    resources :notes
  end
  get '/businesses/:bussiness_id/notes/new', to: 'notes#new', as: 'new_note'
  post '/businesses/:bussiness_id/notes', to: 'notes#create'
  post '/notes', to: 'notes#create'
  
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'

end

