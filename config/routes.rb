Rails.application.routes.draw do
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/sessions/logout', to: 'sessions#delete'
  root "sessions#login"
end
