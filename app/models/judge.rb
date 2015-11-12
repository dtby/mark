class Judge < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :grades
  has_many :players, through: :grades

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         

  attr_accessor :login

 	# 使用手机号登录
  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    login = conditions.delete(:login)
    where(conditions).where(["phone = :value", { :value => login.strip }]).first
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
