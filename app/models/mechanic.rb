class Mechanic

    attr_reader :name, :specialty

    @@all = []

    def self.all
        @@all
    end

    def initialize(name, specialty)
        @name = name
        @specialty = specialty
        @@all << self
    end

    def cars
        Car.all.find_all { |car| car.mechanic == self }
    end

    def owners
        self.cars.map { |car| car.owner }.uniq
    end

    def owner_names
        self.owners.map { |owner| owner.name }
    end

end