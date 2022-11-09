# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


Movie.destroy_all
List.destroy_all
Bookmark.destroy_all

puts 'Creating 10 fake movies...'

10.times do

  movie = Movie.new(
    title: Faker::Movie.title,

    overview: Faker::Book.genre,

    poster_url: Faker::Music.key,

    rating: rand(0..10)
  )
  movie.save!
end

puts 'creating 5 lists'
drame = List.new(
  name: "Drame"
)

file = URI.open('https://gold-n-blog.fr/wp-content/uploads/2015/02/Titanic_affiche_film-270x340.jpg')
drame.photo.attach(io: file, filename: 'titanic.webp', content_type: 'titanic/webp')
drame.save!
puts "#{drame.name} has been created!"


all_time_favourites = List.new(
  name: "All time favourites"
)

file = URI.open('https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/6AF59D197A24957D83EA60DD683D1D4B810F7D52837E81FF5561977081A43781/scale?width=1200&aspectRatio=1.78&format=jpeg')
all_time_favourites.photo.attach(io: file, filename: 'lesaristochats.jpeg', content_type: 'lesaristochats/jpeg')
all_time_favourites.save!
puts "#{all_time_favourites.name} has been created!"

girl_power = List.new(
  name: "Girl Power"
)

file = URI.open('https://imgsrc.cineserie.com/2020/08/1644252.jpg?ver=1')
girl_power.photo.attach(io: file, filename: 'cine.jpg', content_type: 'cine/jpg')
girl_power.save!
puts "#{girl_power.name} has been created"

puts 'finished'
