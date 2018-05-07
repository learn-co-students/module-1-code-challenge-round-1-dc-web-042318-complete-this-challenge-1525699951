require 'pry'
class Customer
  attr_accessor :first_name, :last_name

  @@all = []
  @@names = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    if self.customer.name = name
      return self.customer
    end
  end

  def self.find_all_by_first_name(name)
    self.find_by_name.map do |fullname|
      fullname.split.first = name
    end
  end

  def self.all_names

  end

  def add_review(restaurant, object)
  
  end

end
