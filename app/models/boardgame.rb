class Boardgame

    def initialize(name)
        @name = name
    end

    def get_details
      response = HTTParty.get('https://www.boardgameatlas.com/api/search?name=' + @name + '&client_id=Yz2YXIwfLt')
      @categories = response["games"]
    end

end