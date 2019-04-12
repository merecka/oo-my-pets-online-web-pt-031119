class Owner

  attr_accessor :owner_name

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

  def initialize(owner_name)
    @owner_name = owner_name
    @@all << self
  end



end
