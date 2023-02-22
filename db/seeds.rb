# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
holy_cow = {name: "Holy Cow", address: "Route de Lausanne 64", phone_number: 211112233, category: %w[chinese italian japanese french belgian].sample}
luigia = {name: "Luigia", address: "Route de Meyrin 10", phone_number: 221234567, category: %w[chinese italian japanese french belgian].sample}
seoul = {name: "Séoul", address: "Route de Neuchatel 2", phone_number: 222348743, category: %w[chinese italian japanese french belgian].sample}
kung_fu = {name: "Kung Fu", address: "Boulevard James-Fazy 23", phone_number: 224456772, category: %w[chinese italian japanese french belgian].sample}
ali_hajdar = {name: "Ali Hajdar", address: "Rue de Lausanne 34", phone_number: 235782751, category: %w[chinese italian japanese french belgian].sample}

[holy_cow, luigia, seoul, kung_fu, ali_hajdar].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
