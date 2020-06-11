require './lib/bike'

class DockingStation
    attr_reader :bike_array

    def initialize
        @bike_array = []
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
        @bike_array.count >= 20 ? true : false
    end

    def empty?
        @bike_array == [] ? true : false
    end

end