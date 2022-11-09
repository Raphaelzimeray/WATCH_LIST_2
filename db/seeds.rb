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

drame = URI.open('https://gold-n-blog.fr/wp-content/uploads/2015/02/Titanic_affiche_film-270x340.jpg')
drame.photo.attach(io: file, filename: 'titanic.webp', content_type: 'titanic/webp')


puts 'finished'
