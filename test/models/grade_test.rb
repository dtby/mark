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

require 'test_helper'

class GradeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
