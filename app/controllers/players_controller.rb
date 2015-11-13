class PlayersController < BaseController
	respond_to :html, :js

	def index
		@players = Player.all
	end

	def show
		@player = Player.find(params[:id])
		respond_with @player
	end
end
