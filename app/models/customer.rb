class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
    self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find { |o| 
      if o.full_name == name
        o
      end
    }
  end

  def self.find_all_by_first_name(name)
    self.all.select do |o|
      if o.first_name == name
        o 
      end
    end
  end

  def self.all_names
    self.all.map do |o|
      o.full_name
    end
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end
end
