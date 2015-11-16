# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Administrator.destroy_all
Administrator.create!(id: 1, email: 'admin@mark.com', password: '000000', password_confirmation: '000000')

Grade.destroy_all

Player.destroy_all
Player.create!(id: 1, number: '1', name: '王华', college: '上海电子信息职业技术学院', title: '计算机网络技术', phone: '13916597321' )
Player.create!(id: 2, number: '2', name: '钟燕华', college: '上海震旦职业学院', title: 'C语言程序设计', phone: '18019490811' )
Player.create!(id: 3, number: '3', name: '单敏月', college: '上海行健职业学院', title: '学前儿童心理学', phone: '18616892097' )
Player.create!(id: 4, number: '4', name: '高清林', college: '上海思博职业技术学院', title: '护理信息学', phone: '13795294211' )
Player.create!(id: 5, number: '5', name: '顾佳晨', college: '上海交通职业技术学院', title: '集装箱运输实务', phone: '18501791798' )
Player.create!(id: 6, number: '6', name: '石静', college: '上海农林职业技术学院', title: '国际贸易实务', phone: '13681779962' )
Player.create!(id: 7, number: '7', name: '周暖', college: '上海电子信息职业技术学院', title: '测量技术', phone: '15000453707' )
Player.create!(id: 8, number: '8', name: '李博', college: '上海工会管理职业学院', title: '食品加工及质量管理', phone: '18018673963' )
Player.create!(id: 9, number: '9', name: '张默', college: '上海思博职业技术学院', title: '护理学基础', phone: '18017282505' )
Player.create!(id: 10, number: '10', name: '汪晨武', college: '上海思博职业技术学院', title: '建筑CAD', phone: '15026624887' )
Player.create!(id: 11, number: '11', name: '孙靳炎', college: '上海工商职业技术学院', title: '游戏透视', phone: '13601937167' )
Player.create!(id: 12, number: '12', name: '杨梅', college: '上海工程技术大学高职学院', title: '模具CAD/CAM技术', phone: '13916287721' )
Player.create!(id: 13, number: '13', name: '罗丁喆', college: '上海科学职业技术学院', title: '电子感测技术', phone: '13761099739' )

Judge.destroy_all
Judge.create!(id: 1, name: '杨秀英', email: 'yangxiuying@stiei.edu.cn', password: '111111', password_confirmation: '111111')
Judge.create!(id: 2, name: '詹昌明', email: 'cnaugust@163.com', password: '222222', password_confirmation: '222222')
Judge.create!(id: 3, name: '鞠鲁粤', email: 'lyju@shu.edu.cn', password: '333333', password_confirmation: '333333')
Judge.create!(id: 4, name: '徐国良', email: 'xuguoliang@shec.edu.cn', password: '444444', password_confirmation: '444444')
Judge.create!(id: 5, name: '董奇', email: 'dongqi945@163.com', password: '555555', password_confirmation: '555555')
Judge.create!(id: 6, name: '胡颂恩', email: 'hse_hu@163.com', password: '666666', password_confirmation: '666666')
