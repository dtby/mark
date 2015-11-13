class Player < ActiveRecord::Base
  has_many :grades
  has_many :judges, through: :grades
  validates_presence_of :name, :number, :title, :message => "必须填写!"
  validates_uniqueness_of :number,:case_sensitive => false, :message => "编号已存在!"

  
end
