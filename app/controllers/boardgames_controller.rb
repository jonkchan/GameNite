class BoardgamesController < ApplicationController

	def index
		response = HTTParty.get(Boardgame.url + '&order_by=popularity')
		@boardgames = response["games"]
	end

	# Route to display all categories
	def categories
		response = HTTParty.get('https://www.boardgameatlas.com/api/game/categories?&client_id=' + ENV['CLIENT_ID'])
		@categories = response["categories"]
	end

	# Route to display games by category
	def category
		@category_id = params[:category_id]
		response = HTTParty.get(Boardgame.url + '&categories=' + @category_id + '&order_by=name&ascending=true')
		@boardgames = response["games"]
	end

	# Route to display boardgame by ID
	def show
		@boardgame_id = params[:boardgame_id]
		response = HTTParty.get(Boardgame.url + '&ids=' + @boardgame_id)
		@boardgame = response["games"].first
	end

	def about

	end

end
