class Recipe

  attr_accessor :recipeCardArray, :allergens, :rating, :ingredients
    @@all = []
    # @@recipes = {}
  def initialize(name, recipeCard, *ingredients)
    @name = name
    @recipeCard = recipeCard
    @allergens = []
    @ingredients = Ingredient.new(ingredients)
    # if @@recipes.has_key?(name)
    #   @@recipes[name] += 1
    # else
    #   @@recipes[name] = 1
    # end
    @@all << self
  end


  def self.all
    @@all
  end

  def self.most_popular
    recipes = RecipeCard.all.map { |recipecard|
      recipecard.recipe
    }
    recipes.max_by { |i| recipes.count(i) }
  end
    # recipeNumber = @@recipes.values.max
    # recipeKey = @@recipes.find {|key, value| value == recipeNumber}
    # @@all.find {|theRecipe| recipeKey.key == theRecipe.name}


  def users
    RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end.map do |card|
        card.user
      end
  end

end
