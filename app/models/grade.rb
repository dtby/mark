# == Schema Information
#
# Table name: grades
#
#  id         :integer          not null, primary key
#  target     :integer
#  content    :integer
#  plan       :integer
#  express    :integer
#  judge_id   :integer
#  player_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  total      :integer
#

class Grade < ActiveRecord::Base
  belongs_to :judge
  belongs_to :player


  # 计算每次评分的四项总分
  def self.grade_total params
  	cache = params.except(:player_id, :judge_id).values.collect { |x| x.to_f }
  	return cache.sum
  end
end
