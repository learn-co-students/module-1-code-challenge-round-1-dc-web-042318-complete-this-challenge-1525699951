require 'bundler/setup'
Bundler.require
require_relative '../app/models/customer.rb'
require_relative '../app/models/restaurant.rb'
require_relative '../app/models/review.rb'

john = Customer.new("John", "Wall")
emily = Customer.new("Emily", "White")

papis = Restaurant.new("Papis")
thaihouse = Restaurant.new("Thai House")

sucks = Review.new(john, papis)
great = Review.new(john, thaihouse)
terrible = Review.new(emily, papis)
