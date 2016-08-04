Rails.application.routes.draw do
  get '/auth/:provider/callback', to: 'sessions#create'
  root "sessions#login"
  resources :recipes

  # get 'recipes/show'

  # get 'recipes/edit'

  # get 'recipes/index'

  # get 'recipes/new'

  # get 'recipes/create'

  # get 'recipes/destroy'

  # get 'recipes/update'

  get 'users/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :menus
end
