require './lib/bike'
DEFAULT_CAPACITY = 20

class DockingStation
    attr_reader :bike_array, :capacity

    def initialize(number = DEFAULT_CAPACITY)
        @bike_array = []
        @capacity = number
    end

    def release_bike
        empty? ? (raise StandardError.new "There are no bikes") : Bike.new
        # Bike.new #if we defined this as a variable then we wouldn't be able to read the variable outside of the class, so have to retunr just the class
    end

    def docked_bike(bike)
        full? ? (raise StandardError.new "The dock is full") : @bike_array << bike
        true
    end

    private
    def full?
        @bike_array.count >= DEFAULT_CAPACITY ? true : false
    end

    def empty?
        @bike_array == [] ? true : false
    end
end