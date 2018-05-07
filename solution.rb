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

  class Review
  
    attr_accessor :customer, :restaurant, :content

    @@reviews = []

    def initialize(customer, restaurant, content)
        @customer = customer
        @restaurant = restaurant
        @content = content
        @@reviews << self
    end

    def self.all
        @@reviews
    end

end

class Customer
    attr_accessor :first_name, :last_name
  
    @@customers = []
  
    def initialize(first_name, last_name)
      @first_name = first_name
      @last_name  = last_name
      @@customers << self
    end
  
    def full_name
      "#{first_name} #{last_name}"
    end
  
    def self.all
      @@customers
    end
  
    def self.find_by_name(name)
      @@customers.find {|customer| customer.full_name == name}
    end
  
    def self.find_all_by_first_name(name)
      @@customers.select {|customer| customer.first_name == name}
    end
  
    def self.all_names
      @@customers.map {|customer| customer.full_name }
    end
  
    def add_review(restaurant, content)
      Review.new(self, restaurant, content)
    end
  
  end
  