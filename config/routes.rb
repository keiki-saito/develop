Rails.application.routes.draw do
  get 'originals/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'pages#index'
  resources :users 
  get 'userfmovielikes'=>'users#userfmovielikes'
  get 'userjmovielikes'=>'users#userjmovielikes'
  get 'userjanimelikes'=>'users#userjanimelikes'
  get 'useroriginallikes'=>'users#useroriginallikes'
  
  
   get '/login', to: 'sessions#new'
   post '/login', to: 'sessions#create'
   delete '/logout', to: 'sessions#destroy'

  
   
   
   resources :janimes do
    resources :janimecomments
    post 'janimecreate'=>'likes#janimecreate'
    delete 'janimedestroy'=>'likes#janimedestroy'
  end




  resources :jmovies do
    resources :jmoviecomments
    post 'jmoviecreate'=>'likes#jmoviecreate'
    delete 'jmoviedestroy'=>'likes#jmoviedestroy'
  end

  resources :fmovies do
    resources :fmoviecomments
    post 'fmoviecreate'=>'likes#fmoviecreate'
    delete 'fmoviedestroy'=>'likes#fmoviedestroy'
  end

  resources :jtvs do
    resources :jtvcommnets
  end


  resources :originals do
    resources :originalcomments
    post 'originalcreate'=>'likes#originalcreate'
    delete 'originaldestroy'=>'likes#originaldestroy'
  end
  
end
