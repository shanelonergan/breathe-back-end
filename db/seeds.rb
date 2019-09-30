# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

avi = User.create(name:"Avi")
shane = User.create(name:"Shane")

s1 = Session.create(rounds: 3, user_id: avi.id)
s2 = Session.create(rounds: 4, user_id: shane.id)