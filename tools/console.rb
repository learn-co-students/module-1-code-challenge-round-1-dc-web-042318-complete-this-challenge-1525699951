require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

bob = Customer.new('Bob', 'Smith')
joe = Customer.new('Joe', 'Johnson')
sally = Customer.new('Sally', 'Smith')
adam = Customer.new('Adam', 'Cohn')
joes = Customer.new('Joe', 'Sullivan')
chipotle = Restaurant.new('Chipotle')
rice_bar = Restaurant.new('Rice Bar')
pret = Restaurant.new('Pret')
bob.add_review(chipotle, 'One star: got E-Coli')
adam.add_review(chipotle, "gross.")
adam.add_review(rice_bar, "10/5; I wouldn't eat anywhere else.")
sally.add_review(pret, "Soggy sandwiches. Needless to say, I won't be returning")

Pry.start
