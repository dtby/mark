module Admin
  class PlayersController < Admin::BaseController
    before_action :set_player, only: [:show, :edit, :update, :destroy]
    respond_to :html, :js
    def index
      @players = Player.all
      respond_to do |format|
          format.xls {
              send_data( xls_content_for(@players),
                  :type => "text/excel;charset=utf-8; header=present",
                  :filename => "2015上海市高等职业院校教师教学信息化说课比赛成绩表" )
          }
          format.html
      end
    end

    def show
      @player = Player.find(params[:id])
      @grades = @player.grades
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
        respond_with @players
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
      params.require(:player).permit(:number, :name, :title, :college, :phone)
    end

    def xls_content_for(objs)
      xls_report = StringIO.new
      book = Spreadsheet::Workbook.new
      sheet1 = book.create_worksheet :name => "成绩统计"

      blue = Spreadsheet::Format.new :color => :blue, :weight => :bold, :size => 10
      sheet1.row(0).default_format = blue

      sheet1.row(0).concat %w{序号 姓名 院校 说课名称 联系方式 最高分 最低风 平均分 参评人数}
      count_row = 1
          objs.each do |obj|
          sheet1[count_row, 0] = obj.number
          sheet1[count_row, 1] = obj.name
          sheet1[count_row, 2] = obj.college
          sheet1[count_row, 3] = obj.title
          sheet1[count_row, 4] = obj.phone
          sheet1[count_row, 5] = 1
          sheet1[count_row, 6] = 2
          sheet1[count_row, 7] = 3
          sheet1[count_row, 8] = 4
          count_row += 1
      end

      book.write xls_report
      xls_report.string
    end
  end
end