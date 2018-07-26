class Recipe
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def get_recipes
    RecipeCard.all.select do |card|
      card.recipe == self
    end
  end

  def users
    # return users that use recipes from RC
    get_recipes.map do |card|
      card.user
    end

  end

#return the recipe instance with the highest number of users.
  # def self.most_popular
  #   max = 0
  #   inst = nil #?
  #
  #   self.all.each do |card|
  #     size = RecipeCard.get_recipe_card(recipe).size
  #       if card > max
  #         max = size
  #         card
  #       end
  #       binding.pry
  #   end
  #   card
  # end
  



end
