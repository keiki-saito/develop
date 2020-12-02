Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'sessions/new'
  resources :users 
  
  


  root "pages#index"
  
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  
 

  resources :movies do
    resources :moviecomments
  end

  resources :janimes do
    resources :janimecomments
  end

  resources :jmovies do
    resources :jmoviecomments
  end

  resources :fmovies do
    resources :fmoviecomments
  end
  
end
