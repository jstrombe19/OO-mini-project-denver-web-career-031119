class Allergen
  @@all = []
  # @@allergicUsers = {}
  attr_accessor :user, :ingredient
  def initialize(user, ingredient)
    @user = user
    @ingredient = ingredient
    @@all << self
    # if @@allergicUsers.has_key?(name)
    #   @@allergicUsers[name] += 1
    # else
    #   @@allergicUsers[name] = 1
    # end
  end

  def self.all
    @@all
  end
end
