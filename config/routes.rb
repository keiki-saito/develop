Rails.application.routes.draw do
  get 'sessions/new'
  resources :users 
  resources :usercomments, only: [:create,:new]
  root "pages#index"
  resources :contents
  get 'japananime', to: 'contents#japananime'
  get 'movie', to: 'contents#movie'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
