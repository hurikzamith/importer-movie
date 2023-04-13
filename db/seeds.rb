# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "json"
require "open-uri"



puts "Cleaning up database..."
Movie.destroy_all
puts "Database cleaned"

url = "https://movie-catalog-api-v2.herokuapp.com/"

  puts "Importing movies from page "
  movies = JSON.parse(URI.open(url).read)
  movies.each do |movie|
    puts "Creating #{movie['title']}"
    Movie.create(
      id: movie['id'].to_i,
      title: movie['title'],
      genre: movie['genre'],
      year: movie['year'],
      description: movie['description'],
      country: movie['country']
    )
  end
puts "Movies created"
