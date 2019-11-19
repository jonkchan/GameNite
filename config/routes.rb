Rails.application.routes.draw do
  # get 'boardgame/index'
  # resources :boardgame
  get 'categories', to: 'boardgames#categories'
  get 'categories/:category', to: 'boardgames#categories'
  root 'boardgames#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
