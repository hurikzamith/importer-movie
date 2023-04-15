require "json"
require 'httparty'

puts "Clearing Database.."
Movie.destroy_all
puts "Database cleared!"

puts "Seeding Database.."
for i in 1..6 do
  puts "Seeding page #{i}.."
  response = HTTParty.get("https://movie-catalog2.herokuapp.com/api/v1/movies?page=#{i}")
  movies = response.parsed_response['movies']

  movies.each do |movie|
    Movie.create!(
      title: movie['title'],
      genre: movie['genre'],
      year: movie['year'],
      country: movie['country'],
      description: movie['description']
    )
  end
end
puts "Done!"
