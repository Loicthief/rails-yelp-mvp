# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

puts "Creating restaurants.."
5.times do
  ["chinese", "italian", "japanese", "french", "belgian"]
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::Number.leading_zero_number(digits: 10),
    category: ["chinese", "italian", "japanese", "french", "belgian"].shuffle.first
  )
  puts "Restaurant #{restaurant.name}"
end
