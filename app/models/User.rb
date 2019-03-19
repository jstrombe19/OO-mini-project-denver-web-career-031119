class User

  attr_accessor :name, :recipes
  @@all = []

  def initialize(name)
    @name = name
    @recipes = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_recipe_card(recipe, rating)
    RecipeCard.new(rating, self, recipe)
    @recipes << recipe
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end
end
