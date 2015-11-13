class GradesController < BaseController
	
	def new
		@grade = Grade.new
	end

	def create
		@grade = Grade.new(grade_params)
		@grade[:total] = Grade.grade_total(grade_params)
		if @grade.save
			return redirect_to players_path
		else
			render new
		end
	end

	private
	 def grade_params
	 	params.require(:grade).permit(:player_id, :judge_id, :target, :content, :plan, :express, :total)
	 end
end
