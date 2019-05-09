Rails.application.routes.draw do

  resources :levels
  post 'sessions/create'
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :adventurers
      end
      resources :levels do
        resources :bosses
        resources :adventurers
      end
  
      resources :adventurers
      resources :bosses
      resources :crafts
        end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
