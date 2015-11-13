# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Administrator.destroy_all
Administrator.create!(id: 2, email: 'admin@administrator.com', password: '000000', password_confirmation: '000000')

Judge.destroy_all
Judge.create!(id: 1, name: '陈', email: 'judge@mark.com', phone: '13800001111', password: '001111')