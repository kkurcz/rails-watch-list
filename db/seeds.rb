# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'


url = "http://tmdb.lewagon.com/movie/top_rated"
p_url = "https://image.tmdb.org/t/p/w500"

movies_serialized = open(url).read
movies = JSON.parse(movies_serialized)["results"]

movies.each do |movie|
  poster = movie["poster_path"]
  m = Movie.create!(
  overview: movie["overview"],
  title: movie["title"],
  rating: movie["vote-average"],
  poster_url: "#{p_url}#{poster}"
  )
  puts "#{m.title} was created"
end
