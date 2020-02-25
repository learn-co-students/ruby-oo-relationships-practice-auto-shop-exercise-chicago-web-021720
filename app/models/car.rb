require_relative 'car_owner.rb'
require_relative 'mechanic.rb'
class Car

  attr_reader :make, :model, :classification, :owner
  @@all = []

  def initialize(make, model, classification, owner)
    @owner = owner
    @make = make
    @model = model
    @classification = classification
    @@all << self 
  end

  def self.all
    @@all
    # Get a list of all cars
  end 

  def self.classifications
    # Get a list of all car classifications
    classifs = Car.all.map do |car|
      car.classification 
    end 
    classifs.uniq

  end 

  def mechanic_list_for_classification
# Get a list of mechanics that have an expertise that matches the car classification
    Mechanic.all.select do |mech|
      mech.specialty == self.classification
    end  

  end 

end







