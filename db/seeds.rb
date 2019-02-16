# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

recipes = %w(cupcake cookie muffin pie cake croissant)

p 'I destroy all recipes'
Recipe.destroy_all

p 'I create 6 new recipes'
i = 0
6.times do
  recipe = Recipe.new(
    title: recipes[i],
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Culpa illum iste praesentium alias aspernatur eveniet quam laborum, ratione quo ullam, iusto eum dolores, debitis nemo saepe illo exercitationem, et ducimus."
    )
  recipe.picture = "http://loremflickr.com/280/280/#{recipe.title}"
  recipe.save
  i += 1
end
p 'Finished !'

p 'I destroy all ingredients'
Ingredient.destroy_all

p 'I create 10 new ingredients'
10.times do
  Ingredient.create(
    name: Faker::Food.ingredient
    )
end
p 'Finished !'
