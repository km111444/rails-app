# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "delete database..."
User.destroy_all

puts "creating users..."
User.create(name: "田中花子", phone_number: 00000000000, email: "hanako@example.com", password: "123456")
User.create(name: "高橋道雄", phone_number: 11111111111, email: "michio@example.com", password: "123456")

puts "creating pharmacies..."
Pharmacy.create(address: "5-7-18, ogikubo, suginami, tokyo", pharmacy_name: "明弘堂薬局", user: User.first)

puts "creating chatroom and messages"
Chatroom.create(chatroom_name: "general", user_id: User.second)
Message.create(message: "はじめまして、ユーザー1です", chatroom_id: 1, user_id: User.first)
Message.create(message: "こんにちは、ユーザー2です", chatroom_id: 1, user_id: User.second)

puts "done"
