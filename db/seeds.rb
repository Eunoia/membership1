# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


%w{ yoga rocks swimming lifting flexing }.each { |cat| Category.create(name: cat) }

plan1   = Plan.create(name: "Yoga+", price: "100.00")
plan2   = Plan.create(name: "Yoga Now", price: "19.99")
company = Company.create(email: "toms@yoga.com",password:"password")
company.plans << [plan1, plan2]
company.categories << Category.find_by_name("yoga")

