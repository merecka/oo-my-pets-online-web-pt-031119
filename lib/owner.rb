require 'pry'

class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  #Class methods

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  #Instance Methods

  def initialize(name, species = "human")
    @name = name
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish)
    self.pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    self.pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    self.pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    self.pets[:dogs].collect {|x| x.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].collect {|x| x.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].collect {|x| x.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |key, value|
      value.each {|x| x.mood = "nervous"}
    end
    self.pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end

end
