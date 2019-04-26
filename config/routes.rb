Rails.application.routes.draw do
  resources :teams
  namespace :api do
    namespace :v1 do
      resources :users do 
        resources :matches
        resources :friends
      end
      resource :matches
      resources :bosses
      resources :crafts
      
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
