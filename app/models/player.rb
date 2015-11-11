class Player < ActiveRecord::Base
  has_many :grades
  has_many :judges, through: :grades
end
