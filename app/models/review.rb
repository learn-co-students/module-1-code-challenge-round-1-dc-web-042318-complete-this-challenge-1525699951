class Review
  attr_accessor :customer, :restaurant


  @@all = []

  def initialize(customer, restaurant)
    @customer = customer
    @restaurant = restaurant
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    Customer.all.select do |customer|
      customer.review = self
    end
  end

  def restaurtant
    Restaurant.all.select do |restaraunt|
      restaurtant.review = self
    end
  end

end
