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
      respond_with @judge
    end

    def create
      @judge = Judge.new judge_params
      if @judge.save
        flash[:notice] = "评委创建成功"
      end
      respond_with @judge
    end

    def edit
      respond_with @judge
    end

    def update
      if @judge.update judge_params
        flash[:notice] = "评委更新成功"
      end
      respond_with @judge
    end

    def destroy
      respond_with @judge.destroy
    end

    private
      def set_judge
        @judge = Judge.find(params[:id])
      end

      def judge_params
        params.require(:judge).permit(:name, :phone, :email)
      end
  end
end