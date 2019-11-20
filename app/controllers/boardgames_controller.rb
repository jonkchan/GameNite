class BoardgamesController < ApplicationController

  def index
    boardgame_object = Boardgame.new("Splendor")
    @data = boardgame_object.get_details
  end

  # Route to display all categories
  def categories
      response = HTTParty.get('https://www.boardgameatlas.com/api/game/categories?&client_id=' + ENV['CLIENT_ID'])
      @categories = response["categories"]
  end

  # Route to display games by category
  def category
    @category_id = params[:category_id]
    response = HTTParty.get('https://www.boardgameatlas.com/api/search?categories=' + @category_id + '&order_by=name&ascending=true&client_id=' + ENV['CLIENT_ID'])
    @boardgames = response["games"]
  end

  # Route to display boardgame by ID
  def show
    @boardgame_id = params[:boardgame_id]
    response = HTTParty.get('https://www.boardgameatlas.com/api/search?ids=' + @boardgame_id + '&client_id=' + ENV['CLIENT_ID'])
    @boardgame = response["games"].first
  end

  def about

  end

end
