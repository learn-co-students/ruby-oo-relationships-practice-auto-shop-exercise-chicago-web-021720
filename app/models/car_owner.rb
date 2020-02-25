class CarOwner
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.all
    Car.all.collect {|car| car.owner}.uniq
  end

  def self.average_amount_of_cars
    num_of_cars_list = self.all.collect {|owner| owner.cars.length}
    num_of_cars_list.sum / num_of_cars_list.length
  end

  def cars
    Car.all.select {|car| car.owner == self}
  end

  def mechanics
    self.cars.collect {|car| car.mechanic}.uniq
  end
end
