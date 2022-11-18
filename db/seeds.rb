# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Movie.destroy_all

puts "Creating movies..."

Juno = { title: "Juno", overview: "Juno McGuff, 16 ans, est une jeune fille qui n'a pas la langue dans sa poche mais qui, sous ses airs de dure, se cherche comme toutes les adolescentes de son âge.", poster_url: "url à chercher", rating: 6.9 }
Home_Alone = { title: "Home_Alone", overview: "In the confusion and rush to get to the airport, Kevin is accidentally left behind. Kevin wakes to find the house empty.", poster_url: "url à chercher", rating: 8.7 }
A_Star_is_born = { title: "A_Star_is_born", overview: "Star de country sur le déclin, Jackson Maine (Bradley Cooper) découvre Ally Campana (Lady Gaga), une jeune chanteuse très prometteuse. ", poster_url: "url à chercher", rating: 7.9 }
Jumanji = { title: "Jumanji", overview: "Lors d'une partie de Jumanji, un jeu très ancien, le jeune Alan est propulsé sous les yeux de son amie d'enfance, Sarah, dans un étrange pays.", poster_url: "url à chercher", rating: 7.0 }

[Juno, Home_Alone, A_Star_is_born, Jumanji].each do |attributes|
  movie = Movie.create!(attributes)
  puts "Created #{movie.title}"
end
puts "Finished!"
