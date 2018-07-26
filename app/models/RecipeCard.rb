class RecipeCard
  attr_reader :date, :recipe

  attr_accessor :rating, :user

  @@all = []

  def initialize(date, recipe, user, rating)
    @date = date
    @recipe = recipe
    @user = user
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

  def rating
    @rating.to_i
  end

  def self.get_recipe_card(recipe)
    self.all.select do |card|
      recipe == card
    end
  end

end
