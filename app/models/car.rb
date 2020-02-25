class Car
  attr_accessor :owner, :mechanic
  attr_reader :make, :model, :classification
  @@all = []

  def initialize(make, model, classification, owner)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    self.all.collect {|car| car.classification}.uniq
  end

  def find_mechanics
    Mechanic.all.select {|mech| mech.specialty == self.classification}
  end

  def add_mechanic(mechanic)
    if self.find_mechanics.any?(mechanic) == true
      self.mechanic = mechanic
    else
      raise ArgumentError.new("#{mechanic.name} is only qualified to work on cars with type #{mechanic.specialty}. This car has type #{self.classification}.")
    end
  end
end
