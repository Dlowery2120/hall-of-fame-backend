Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do 
    namespace :v1 do 
      resources :gamemodes
      resources :users
      resources :questions
      resources :answers
      resources :genres
      resources :scoreboards
      resources :songs

      post '/login', to: "auth#login"
    end
  end


end
