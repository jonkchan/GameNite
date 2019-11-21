Rails.application.routes.draw do
	resources :users

	get 'boardgames', to: 'boardgames#index'
	get 'categories', to: 'boardgames#categories'
	get 'categories/:category_id', to: 'boardgames#category'

	get 'boardgames/:boardgame_id', to: 'boardgames#show'

	get 'about', to: 'boardgames#about'

	get 'login', to: 'users#login'
	post 'login', to: 'users#login_user'

	get 'signup', to: 'users#signup'
	post 'signup', to: 'users#signup_user'

	get 'logout', to: 'users#logout'

	root 'boardgames#index'
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
