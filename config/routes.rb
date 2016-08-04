Rails.application.routes.draw do
  resources :recipes
  get '/auth/:provider/callback', to: 'sessions#create'
  root "sessions#login"
end
