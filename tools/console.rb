require_relative '../config/environment.rb'

recipe1 = Recipe.new("pasta")
recipe2 = Recipe.new("bread")
recipe3 = Recipe.new("cake")

user1 = User.new("Ena")
user2 = User.new("Casi")
user3 = User.new("Paul")

rc1 = RecipeCard.new("7/26/18", recipe1, user1, 4)
rc2 = RecipeCard.new("7/26/18", recipe2, user2, 4)
rc3 = RecipeCard.new("7/26/18", recipe3, user3, "4")



binding.pry
