class Player < ActiveRecord::Base
  has_many :grades
  has_many :judges, through: :grades
  validates_uniqueness_of :number,:case_sensitive => false, :message => "该编号已存在!"
end
