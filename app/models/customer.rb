class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def add_review(restaurant, content)
    Review.new(restaurant, content, self)
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find { |c| c.first_name == name.split[0] && c.last_name == name.split[1] }
  end

  def self.find_all_by_first_name(name)
    @@all.select { |c| c.first_name == name.split[0] }
  end

  def self.all_names
    @@all.map { |c| "#{c.first_name} #{c.last_name}" }
  end
end
