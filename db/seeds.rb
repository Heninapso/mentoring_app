# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database'
ChatRoom.destroy_all
User.destroy_all
Message.destroy_all


puts'Creating Chatroom'
chat_room = ChatRoom.create!(name: "general")

puts 'Creating Users'
donnie = User.create!(
  name: "Donnie",
  avatar_url: "https://dianaashworth.files.wordpress.com/2014/03/041squaresheep.jpg",
  email: "donnie@donnie.com",
  password: "azerty"
)

yellow = User.create!(
  name: "Yellow",
  avatar_url: "https://upload.wikimedia.org/wikipedia/commons/8/8a/Bear_Square.JPG",
  email: "yellow@yellow.com",
  password: "azerty"
)

puts 'Creating messages'
message1 = Message.create!(
  content: "Hello",
  chat_room: chat_room,
  user: donnie
)

message2 = Message.create!(
  content: "You stink",
  chat_room: chat_room,
  user: yellow
)

puts 'seeds completed'
