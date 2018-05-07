require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

munir = Customer.new("munir", "kizilcali")
pinar = Customer.new("pinar", "sayar")
deep = Customer.new("deep", "patel")
adam = Customer.new("adam", "kohn")
amy = Customer.new("amy", "lou")

ankara = Restaurant.new("Ankara")
mcdonalds = Restaurant.new("mcdonalds")
le_diplomate = Restaurant.new("le diplomate")
taylor_gourmet = Restaurant.new("taylor gourmet")
bursa_iskender = Restaurant.new("bursa iskender")
hala = Restaurant.new("hala")

munir.add_review(ankara, "nice")
munir.add_review(le_diplomate, "expensive")
pinar.add_review(hala, "not clean")
amy.add_review(taylor_gourmet, "nice salad")
pinar.add_review(ankara, "cool")
munir.add_review(le_diplomate, "chique")

binding.pry

puts "done"