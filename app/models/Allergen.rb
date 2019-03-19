class Allergen
  @@all = []
  @@allergicUsers = {}
  attr_accessor :name
  def initalize(name)
    @name = name
    @@all << self
    if @@allergicUsers.has_key?(name)
      @@allergicUsers[name] += 1
    else
      @@allergicUsers[name] = 1
    end
  end

  def self.all
    @@all
  end
end
