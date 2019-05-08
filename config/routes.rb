Rails.application.routes.draw do

  
  namespace :api do
    namespace :v1 do
          post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      resources :users do 
        resources :recruits
                  end
      resources :adventurers
      resources :bosses
      resources :crafts
      resources :recruits
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
