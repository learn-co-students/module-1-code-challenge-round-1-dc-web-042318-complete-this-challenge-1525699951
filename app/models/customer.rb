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
