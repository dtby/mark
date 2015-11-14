# == Schema Information
#
# Table name: judges
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  phone                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  name                   :string(255)
#

class Judge < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :grades, :dependent => :destroy
  has_many :players, through: :grades

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         

  attr_accessor :login

 	# 使用手机号登录
  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    login = conditions.delete(:login)
    where(conditions).where(["name = :value", { :value => login.strip }]).first
	end

	#判断是否需要更新密码
	# def update_judge(params)
	# 	if params[:password].present? || params[:password_confirmation].present?
	# 		update(params)
	# 	else
	# 		update_without_password(params)
	# 	end
	# end

	# 不验证邮箱
	def email_required?
		false
	end

end
