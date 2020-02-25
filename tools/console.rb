require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jim = CarOwner.new("Jim")
jane = CarOwner.new("Jane")

honda = Car.new("Honda", "CRV", "antique", jim)
toyota = Car.new("Toyota", "Corolla", "exotic", jim)

ford = Car.new("Ford", "Focus", "clunker", jane)
jeep = Car.new("Jeep", "Cherokee", "antique", jane)

george = Mechanic.new("George", "antique")
jeremy = Mechanic.new("Jeremy", "exotic")

binding.pry
