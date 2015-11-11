class Grade < ActiveRecord::Base
  belongs_to :judge
  belongs_to :player
end
