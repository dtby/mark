module Admin
  class AdministratorsController < Admin::BaseController
    before_action :set_administrator, only: [:show, :edit, :update, :destroy]
    respond_to :html, :js
    def index
      @administrators = Administrator.all
    end

    def show
    end

    def new
      @administrator = Administrator.new
    end

    def create
      @administrator = Administrator.new(administrator_params)
      if @administrator.save
        flash[:notice] = "评委创建成功"
        respond_with @administrators
      else
        flash[:error] = "创建失败"
        render :new
      end
    end

    def edit
      respond_with @administrator
    end

    def update
      if @administrator.update(administrator_params)
        flash[:notice] = "更新成功"
        respond_with @administrators
      else
        flash[:error] = "更新失败"
      end
    end

    def destroy
      @administrator.destroy
      redirect_to admin_administrators_path
    end

    private
      def set_administrator
        @administrator = Administrator.find(params[:id])
      end

      def administrator_params
        params.require(:administrator).permit(:email, :password ,:password_confirmation)
      end
  end
end