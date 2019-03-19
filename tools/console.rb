require_relative '../config/environment.rb'
require 'pry'



kendall = User.new("Kendall")
jared = User.new("Jared")
kevin = User.new("Kevin")

puts User.all

kevin.add_recipe_card('spaghetti', 7_000_000)
kendall.add_recipe_card('steak', 100_000_000_000_000_000_000_000)
jared.add_recipe_card('sweet_potatoes', 7.9)
kendall.add_recipe_card('sweet_potatoes', 2.1)

# puts 'spaghetti'.users

RecipeIngredient.new('sweet_potatoes', 'nutmeg')

kendall.declare_allergen('nutmeg')


binding.pry

puts 0
