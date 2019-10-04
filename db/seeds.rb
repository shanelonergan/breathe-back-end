# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Session.destroy_all
User.destroy_all


avi = User.create(name:"avi")
shane = User.create(name:"shane")

# s1 = Session.create(rounds: 3, user_id: shane.id, created_at: "2019-09-29 14:28:47")
# s2 = Session.create(rounds: 3, user_id: shane.id, created_at: "2019-09-30 14:28:47")
s3 = Session.create(rounds: 3, user_id: shane.id, created_at: "2019-10-01 14:28:47")
s7 = Session.create(rounds: 3, user_id: shane.id, created_at: "2019-10-02 14:28:47")
s4 = Session.create(rounds: 4, user_id: shane.id)
s5 = Session.create(rounds: 4, user_id: avi.id)
s6 = Session.create(rounds: 4, user_id: avi.id)