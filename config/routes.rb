Rails.application.routes.draw do
  resources :menus

  get '/auth/:provider/callback', to: 'sessions#create'
  root "sessions#login"
end
