# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  title      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  number     :string(255)
#  college    :string(255)
#  phone      :string(255)
#

class Player < ActiveRecord::Base
  has_many :grades, :dependent => :destroy
  has_many :judges, through: :grades
  validates_presence_of :name, :number, :title, :message => "必须填写!"
  validates_uniqueness_of :number,:case_sensitive => false, :message => "编号已存在!"
end
