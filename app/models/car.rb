class Car

    attr_accessor :owner, :mechanic
    attr_reader :make, :model, :classification

    @@all = []

    def self.all
        @@all
    end

    def self.classifications
      @@all.map { |car| car.classification }.uniq
    end

    def initialize(make, model, classification, owner = nil, mechanic= nil)
        @make = make
        @model = model
        @classification = classification
        @owner = owner
        @mechanic = mechanic
        @@all << self
    end

    def qualified_mechanics
        Mechanic.all.find_all { |mec| mec.specialty == self.classification }
    end

    def set_mechanic(mec)
        if self.qualified_mechanics.include?(mec)
            self.mechanic = mec
        else
            raise ArgumentError, "#{mec.name} is not qualified to service a car of type #{self.classification}. Please try again."
        end
    end

end