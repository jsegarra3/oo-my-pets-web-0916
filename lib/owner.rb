class Owner
  @@all = []
  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species)
    @species = species
    @@all << self
    @pets = {
      :dogs => [],
      :fishes => [],
      :cats => []
    }
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(pet_name)
    @pets[:fishes] << Fish.new(pet_name)
  end

  def buy_dog(pet_name)
    @pets[:dogs] << Dog.new(pet_name)
  end

  def buy_cat(pet_name)
    @pets[:cats] << Cat.new(pet_name)
  end

  def walk_dogs
    @pets[:dogs].each{|dawg| dawg.mood="happy"}
  end

  def play_with_cats
    @pets[:cats].each{|kat| kat.mood="happy"}
  end

  def feed_fish
    @pets[:fishes].each{|fosh| fosh.mood="happy"}
  end

  def sell_pets
    @pets.values.each{|pet_list| pet_list.each{|pet| pet.mood="nervous"}}
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
