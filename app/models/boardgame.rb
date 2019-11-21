class Boardgame
    attr_reader :id, :name

	@@url = 'https://www.boardgameatlas.com/api/search?'

    def initialize(id, name)
        @id = id
        @name = name
	end
	
	def self.url
		@@url
	end

    def get_details
    	response = HTTParty.get(@@url + 'name=' + @name + '&client_id=' + ENV['CLIENT_ID'])
    	@categories = response["games"]
    end
end