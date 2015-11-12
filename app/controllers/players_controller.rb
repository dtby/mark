class PlayersController < BaseController
	def index
		@players = Player.all
	end
end
