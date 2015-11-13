class Grade < ActiveRecord::Base
  belongs_to :judge
  belongs_to :player

  def self.grade_total params
  	cache = params.except(:player_id, :judge_id).values.map { |x| x.to_i }
  	return cache.sum
  end
end
