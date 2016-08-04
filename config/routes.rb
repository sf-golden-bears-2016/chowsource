Rails.application.routes.draw do
  resources :menus
  resources :sessions, only: [:show]

  get '/auth/:provider/callback', to: 'sessions#create'
  root "sessions#login"
end
