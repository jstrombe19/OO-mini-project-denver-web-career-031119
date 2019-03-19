class RecipeCard

    attr_accessor :date, :rating, :user, :recipe
    @@all = []

  def initialize(rating, user, recipe, *ingredients)
    @date = Time.now.strftime("%m/%d/%Y")
    @rating = rating
    @user = user
    @recipe = Recipe.new(recipe, self, *ingredients)
    @@all << self
  end

  def self.all
    @@all
  end

end
