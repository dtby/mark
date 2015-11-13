module Admin
  class JudgesController < Admin::BaseController
    before_action :set_judge, only: [:show, :edit, :update, :destroy]
    respond_to :html, :js
    def index
      @judges = Judge.all
    end

    def show
      respond_with Judge.find(params[:id])
    end

    def new
      @judge = Judge.new
    end

    def create
      @judge = Judge.new(judge_params)
      if @judge.save
        flash[:notice] = "评委创建成功"
        respond_with @judges
      else
        flash[:error] = "创建失败"
        render :new
      end
    end

    def edit
      respond_with @judge
    end

    def update
      if @judge.update(judge_params)
        flash[:notice] = "更新成功"
        respond_with @judges
      else
        flash[:error] = "更新失败"
      end
    end

    def destroy
      @judge.destroy
      redirect_to admin_judges_path
    end

    private
      def set_judge
        @judge = Judge.find(params[:id])
      end

      def judge_params
        params.require(:judge).permit(:name, :phone, :email, :password ,:password_confirmation)
      end
  end
end