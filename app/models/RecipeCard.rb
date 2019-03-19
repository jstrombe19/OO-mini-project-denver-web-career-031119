class RecipeCard

    attr_accessor :date, :rating, :user, :recipe
    @@all = []

  def initialize(rating, user, recipe)
    @date = Time.now.strftime("%m/%d/%Y")
    @rating = rating
    @user = user
    @recipe = recipe
    @@all << self
  end

  def self.all
    @@all
  end

end
