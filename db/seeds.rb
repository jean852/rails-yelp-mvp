# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

i = 0
categories = ["chinese", "italian", "japanese", "french", "belgian"]

while i < 10
  category = categories.sample.to_s
  @restaurant = Restaurant.new(name: Faker::Restaurant.name, address: Faker::Address.full_address, category: category)
  @restaurant.save
  i += 1
end
