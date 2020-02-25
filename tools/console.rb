require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

dave = CarOwner.new("Dave")
larry = CarOwner.new("Larry")
stephanie = CarOwner.new("Stephanie")


fast = Car.new("GMC", "fast one", "antique", dave)
cool = Car.new("Chevy", "cool one", "exotic", larry)
good = Car.new("Ford", "good one", "clunker", stephanie)
not_good_one = Car.new("Homemade", "not good one", "clunker", dave)

max = Mechanic.new("max", "antique")
dan = Mechanic.new("dan", "clunker")
lin = Mechanic.new("lin", "exotic")




binding.pry

# "antique", "exotic", or "clunker"