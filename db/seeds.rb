# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all

# Import of ingredients

# url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# ingredient_serialized = open(url).read
# ingredient = JSON.parse(ingredient_serialized)

# ingredient["drinks"].each do |drink_hash|
#   Ingredient.create(name: drink_hash["strIngredient1"])
#   # Ingredient.create!(a['name'], without_protection: true)
# end

# # Import of Cocktails

# Cocktail.create(name: 'Mojito')
# Cocktail.create(name: 'Blue Lagoon')
# Cocktail.create(name: 'Tequila Sunrise')
# Cocktail.create(name: 'Daikiri')
# Cocktail.create(name: 'Caipirinha')

