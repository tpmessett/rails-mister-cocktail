require 'open-uri'
require 'json'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
# ingredients_serialized = open(url).read
# ingredients = JSON.parse(ingredients_serialized)
# drinks = ingredients["drinks"]
# drinks.each do |drink|
#   i = drink['strIngredient1']
#   Ingredient.create(name: i)
# end

# Cocktail.create(name: "Manhattan")
# Cocktail.create(name: "Martini")
# Cocktail.create(name: "Espresso Martini")

Dose.create(description: "2 shots", ingredient_id: 1, cocktail_id: 1)
Dose.create(description: "1 shot", ingredient_id: 3, cocktail_id: 1)
Dose.create(description: "5 shots", ingredient_id: 7, cocktail_id: 1)
