class GradesController < BaseController
	respond_to :html, :js
	
	def new
		@player = Player.find(params[:player_id])
		@grade = Grade.new
	end

	def create
		@grade = Grade.new(grade_params)
		@grade.total = Grade.grade_total(grade_params)
		@grade.save
		return redirect_to players_path
	end

	def show
		@title = params[:title]
		respond_to do |format|
			format.js {
				format.js
			}
		end
	end

	private
	 def grade_params
	 	params.require(:grade).permit(:player_id, :judge_id, :target, :content, :plan, :express, :total)
	 end
end
