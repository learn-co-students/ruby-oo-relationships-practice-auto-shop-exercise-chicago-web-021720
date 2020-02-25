class Mechanic

  attr_reader :name, :specialty
  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self 
end

def self.all
  @@all
  # Get a list of all mechanics
end 

def cars_serviced
  # Get a list of all cars that a mechanic services
  Car.all.select do |car|
    car.classification == self.specialty
  end 
end 

def car_owner_patrons
  # Get a list of all the car owners that go to a specific mechanic
  cars_serviced.map do |car|
    car.owner
  end 
end 

def car_owner_patrons_by_name
  # Get a list of the names of all car owners who go to a specific mechanic
  car_owner_patrons.map do |person|
    person.name
  end 
end


end





