module Admin
  class PlayersController < Admin::BaseController
    before_action :set_player, only: [:show, :edit, :update, :destroy]
    respond_to :html, :js
    def index
      @players = Player.all
    end

    def show
    end

    def new
      @player = Player.new
    end

    def create
      @player = Player.new(player_params)
      if @player.save
        flash[:notice] = "评委创建成功"
        respond_with @players
      else
        flash[:error] = "创建失败"
        render :new
      end
    end

    def edit
      respond_with @player
    end

    def update
      if @player.update(player_params)
        flash[:notice] = "更新成功"
      else
        flash[:error] = "更新失败"
      end
    end

    def destroy
      @player.destroy
      redirect_to admin_players_path
    end

    private
      def set_player
        @player = Player.find(params[:id])
      end

      def player_params
        params.require(:player).permit(:number, :name, :title, :college)
      end
  end
end