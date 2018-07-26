class User
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

#User#recipes returns all recipes user has cards for.
def recipes
  RecipeCard.all.select do |card|
    card.user == self
  end
end

#add_RecipeCard(recipe, date, rating) to create a new recipe card
def add_recipe_card(date, recipe, rating)
  RecipeCard.new(date, recipe, self, rating)
end

end
