# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "creating pharmacies...."

User.create(name: "田中花子", phone_number: 1111111111)
Pharmacy.create(address: "5-7-18, ogikubo, suginami, tokyo", pharmacy_name: "明弘堂薬局", user: User.first)
Chatroom.create(chatroom_name: "general", user_id: 1)

puts "done"
