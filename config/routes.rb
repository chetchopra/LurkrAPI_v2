Rails.application.routes.draw do

  #BUG - landing page not working
  # root 'pages#show'

  namespace :api do
    namespace :v1 do
      root 'pages#showv1'
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end

end
