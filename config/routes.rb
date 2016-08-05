Rails.application.routes.draw do
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/sessions/logout', to: 'sessions#delete'
  root "sessions#login"

  get "/users/menus", to: 'menus#show'
  get '/users/profile', to: "users#show"
  resources :menus

  post "/recipes/:id/menus", to: 'menus#create'
  delete "/recipes/:id/menus", to: 'menus#delete'
  resources :recipes

  post "/loves/:id", to: 'loves#create'
  resources :loves, only: [:destroy]
end
