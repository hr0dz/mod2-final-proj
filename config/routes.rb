Rails.application.routes.draw do 
  resources :users, only: [:new, :create, :show, :index]
  
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
end

