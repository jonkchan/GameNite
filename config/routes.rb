Rails.application.routes.draw do
  resources :users
  # get 'boardgame/index'
  # resources :boardgame
  get 'categories', to: 'boardgames#categories'
  get 'categories/:category_id', to: 'boardgames#category'

  get 'boardgames/:boardgame_id', to: 'boardgames#show'

  get 'about', to: 'boardgames#about'

  root 'boardgames#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
