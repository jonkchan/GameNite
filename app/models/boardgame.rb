class Boardgame
    attr_reader :id, :name

	@@url = 'https://www.boardgameatlas.com/api/search?&client_id=' + ENV['CLIENT_ID']

    def initialize(id = nil, name)
        @id = id
		@name = name
	end
	
	def self.url
		@@url
	end

    def get_details
    	response = HTTParty.get(@@url + '&name=' + @name + "&limit=1")
    	response = response["games"]
    end
end