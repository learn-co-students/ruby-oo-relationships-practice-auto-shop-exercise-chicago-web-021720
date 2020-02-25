class CarOwner

    attr_reader :name

    @@all = []

    def self.all
        @@all
    end

    def self.average_car_count
        1.0 * @@all.map { |owner| owner.cars.length }.sum / @all.length
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def cars
        Car.all.find_all { |car| car.owner == self }
    end

    def mechanics
        self.cars.map { |car| car.mechanic }
    end

end