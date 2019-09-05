# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Faker::Config.locale = 'fr'
User.destroy_all
Item.destroy_all

10.times do 
	User.create(first_name: Faker::Name.first_name , last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "123456", password_confirmation: "123456")
end

catpics=[

  "http://www.carolinameows.net/sitebuilder/images/QA03_154-659x440.jpg",
  "http://ljubimci.telegraf.rs/wp-content/uploads/2017/05/31/macka1-659x440.jpg",
  "http://www.redbuzz.fr/wp-content/uploads/2014/05/hungover-animals15-659x438.jpg",
  "http://ljubimci.telegraf.rs/wp-content/uploads/2017/06/17/macka-659x440.jpg",
  "http://ljubimci.telegraf.rs/wp-content/uploads/2017/06/08/macka-659x440.jpg",
  "http://webneel.com/daily/sites/default/files/images/daily/02-2013/17-funny-photography.preview.jpg",
  "https://images.pexels.com/photos/127028/pexels-photo-127028.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
  "https://images.pexels.com/photos/617278/pexels-photo-617278.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
  "https://images.pexels.com/photos/171227/pexels-photo-171227.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
  "https://images.pexels.com/photos/271955/pexels-photo-271955.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
  "https://images.pexels.com/photos/257532/pexels-photo-257532.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
  "https://images.pexels.com/photos/290164/pexels-photo-290164.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
  "https://images.pexels.com/photos/127027/pexels-photo-127027.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
  "https://images.pexels.com/photos/315582/pexels-photo-315582.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
  "https://images.pexels.com/photos/156934/pexels-photo-156934.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
  "https://images.pexels.com/photos/7517/animal-sitting-animals-inside.jpg?auto=compress&cs=tinysrgb&h=650&w=940",
  "https://images.pexels.com/photos/416160/pexels-photo-416160.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
  "https://images.pexels.com/photos/96938/pexels-photo-96938.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
  "https://images.pexels.com/photos/248280/pexels-photo-248280.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
  "https://images.pexels.com/photos/730896/pexels-photo-730896.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
  "https://images.pexels.com/photos/774731/pexels-photo-774731.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
  "https://images.pexels.com/photos/479009/pexels-photo-479009.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
  "https://images.pexels.com/photos/1234096/pexels-photo-1234096.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
  "https://images.pexels.com/photos/1275451/pexels-photo-1275451.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
  "https://images.pexels.com/photos/674570/pexels-photo-674570.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
  "https://images.pexels.com/photos/33537/cat-animal-cat-portrait-mackerel.jpg?auto=compress&cs=tinysrgb&h=650&w=940"
]

catpics.each do |url|
  Item.create(title:Faker::FunnyName.name, description: Faker::Quote.famous_last_words, price: 4.99, image_url: url)
end

puts "votre base de données a bien été créée"