class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select { |r| r.restaurant == self }
  end

  def customers
    Review.all.map { |r| r.customer if r.restaurant == self }.compact
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find { |r| r.name == name }
  end
end
