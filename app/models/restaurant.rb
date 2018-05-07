class Restaurant
  attr_accessor :name

  @@restaurants = []

  def initialize(name)
    @name = name
    @@restaurants << self
  end

  def self.all
    @@restaurants
  end

  def self.find_by_name(name)
    @@restaurants.find {|restaurant| restaurant.name == name}
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    self.reviews.map {|review| review.customer}
  end

end
