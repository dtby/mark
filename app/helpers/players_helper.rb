module PlayersHelper
	def is_judged(player, current_judge)
		Grade.where(player_id: player.id, judge_id: current_judge.id).present?
	end
end
