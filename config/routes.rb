Rails.application.routes.draw do

  post 'sessions/create'
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :adventurers
      end
  
      resources :adventurers
      resources :bosses
      resources :crafts
        end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
