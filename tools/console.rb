require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Informal test code... won't do it this way for much longer!

dish = Car.new("Ford", "Expedition", "gas guzzler")
fer = Car.new("Ford", "Mustang", "luxury")
portofino = Car.new("Ferrari", "Portofino", "luxury")
trash = Car.new("Hummer", "H2", "beater")

ken_miles = Mechanic.new("Ken Miles", "luxury")
skeeter = Mechanic.new("Skeeter McBob", "beater")
carroll_shelby = CarOwner.new("Carroll Shelby")
bryan_cranston = Mechanic.new("Bryan Cranston", "gas guzzler")
lilho = Mechanic.new("Bitch Ass Ho", "luxury")

fer.mechanic = ken_miles
fer.owner = carroll_shelby

portofino.set_mechanic(lilho)

trash.owner = carroll_shelby
trash.set_mechanic(skeeter)

p Mechanic.all
p Car.all
p CarOwner.all
p carroll_shelby.mechanics
p carroll_shelby.cars
p portofino.qualified_mechanics.include?(ken_miles)
p fer

binding.pry