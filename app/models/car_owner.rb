require_relative 'car.rb'
require_relative 'mechanic.rb'
class CarOwner

  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all
    @@all 
    # Get a list of all owners
  end 

  def cars
# Get a list of all the cars that a specific owner has
    Car.all.select do |car|
      car.owner == self 
    end 
  end 

  def mechanics
    # Get a list of all the mechanics that a specific owner goes to
    classif = cars.map do |car|
      car.classification
    end 
    classif.uniq
    Mechanic.all.select do |mech|
      classif.any?(mech.specialty)
    end 
  end 

  def self.average_cars_owned
    # Get the average amount of cars owned for all owners

    Car.all.length / CarOwner.all.length.to_f
  end 


end






