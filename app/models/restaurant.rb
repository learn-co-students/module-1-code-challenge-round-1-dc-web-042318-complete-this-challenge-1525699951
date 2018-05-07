class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    if self.restaurant.name = name
      return self.restaurant
    end
  end

  def reviews
    Review.all.map {|review| review.restaurant == self}
  end

  def customers
    Review.all.select {|review| review.restaurant == self}.map {|review| review.customer}
  end

end
