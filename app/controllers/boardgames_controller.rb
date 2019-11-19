class BoardgamesController < ApplicationController

  def index
    boardgame_object = Boardgame.new("Splendor")
    @data = boardgame_object.get_details
  end

  def categories
    @category = params[:category]
    
    if @category
      response = HTTParty.get('https://www.boardgameatlas.com/api/search?categories=' + @category + '&client_id=' + ENV['CLIENT_ID'])
      @categories = ["name": 1]
    else
      response = HTTParty.get('https://www.boardgameatlas.com/api/game/categories?&client_id=' + ENV['CLIENT_ID'])
      @categories = response["categories"]
    end
  end

end
