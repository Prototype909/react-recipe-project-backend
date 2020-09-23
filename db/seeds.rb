# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all



3.times do 
    User.create(name: Faker::Name.name, email: Faker::Internet.email, password: "password")
end

50.times do 
    User.all.sample.recipes.create(name: Faker::Food.dish, image_url: "sample.jpg", description: Faker::Food.description, instructions: "#{Faker::Food.measurement} #{Faker::Food.ingredient} #{Faker::Food.measurement} #{Faker::Food.vegetables}")
end

100.times do 
    User.all.sample.recipes.all.sample.ingredients.create(name: Faker::Food.ingredient, quantity: Faker::Number.number(digits: 2), unit: Faker::Food.metric_measurement)
end
