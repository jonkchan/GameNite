class BoardgamesController < ApplicationController

  def index
    boardgame_object = Boardgame.new("Splendor")
    @data = boardgame_object.get_details
  end

  # Route to show all categories
  def categories
      response = HTTParty.get('https://www.boardgameatlas.com/api/game/categories?&client_id=' + ENV['CLIENT_ID'])
      @categories = response["categories"]
  end

  # Route to show games by category
  def category
    @category_id = params[:category]
    response = HTTParty.get('https://www.boardgameatlas.com/api/search?categories=' + @category_id + '&order_by=name&ascending=true&client_id=' + ENV['CLIENT_ID'])
    @boardgames = response["games"]
  end

  def about

  end

end
