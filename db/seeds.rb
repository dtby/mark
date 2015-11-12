# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Judge.destroy_all
Judge.create!(id: 1, phone: '13800000000', name: '陈', email: 'judge@mark.com', password: '000000', password_confirmation: '000000')

Player.destroy_all
Player.create!(id: 1, name: '陈某某', title: '我的说课名称')