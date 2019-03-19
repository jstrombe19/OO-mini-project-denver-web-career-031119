class Ingredient
  @@all = []
  attr_accessor :name
  def initalize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    ingredients = Allergen.all.map { |allergen|
      allergen.ingredient
    }
    ingredients.max_by { |i| ingredients.count(i) }
  end



  #   most_allergic = Allergen.allergicUsers.values.max
  #   allergen_key = Allergen.allergicUsers.key(most_allergic)
  #   @@all.find {|ingredient| ingredient.name == allergen_key}
  # end
end
