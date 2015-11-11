module Admin
  class JudgesController < Admin::BaseController

    def index
      @judges = Judge.all
    end

    def show
      respond_with judge.find(params[:id])
    end

    def new
      @judge = judge.new
      respond_with @judge
    end

    def create
      @judge = judge.new judge_params
      if @judge.save
        flash[:notice] = "评委创建成功"
        Userjudge.create(user_id: current_user.id, judge_id: @judge.id, role: 1, invite: true)
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
      def judge_params
        params.require(:judge).permit(:email)
      end
  end
end