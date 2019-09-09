Rails.application.routes.draw do

  #BUG - landing page not working
  # root 'pages#show'

  namespace :api do
    namespace :v1 do
      #Landing
      root 'pages#showv1'

      #User Auth
      resources :users, only: [:create]
      get '/profile', to: 'users#profile'
      post '/login', to: 'auth#create'

      #App reddit api auth
      get '/appLogin', to: 'oauth#appLogin'
      get '/authorize_callback', to: 'oauth#authorize'

      #User

      #Subreddits
      get '/subreddits/:name', to: 'subreddits#show'
      get '/subredditspost', to: 'subreddits#showPost'
      post '/subreddits', to: 'subreddits#create'
      
  
    end
  end

end
