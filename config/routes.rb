Rails.application.routes.draw do
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/sessions/logout', to: 'sessions#delete'
  post "/recipes/:id/menus", to: 'menus#create'
  get "/users/menus", to: 'menus#show'
  root "sessions#login"

  resources :recipes
  resources :users, only: [:show]
end
