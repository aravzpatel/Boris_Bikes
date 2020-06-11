require './lib/bike'
DEFAULT_CAPACITY = 20

class DockingStation
    attr_reader :bike_array, :capacity

    def initialize(number = DEFAULT_CAPACITY)
        @bike_array = []
        @capacity = number
    end

    def release_bike
        if empty?
            raise StandardError.new "There are no bikes"
        
        else loop do 
            x = 0
            
            if @bike_array[x].working == true
                return @bike_array[x]
            elsif x > @bike_array.count - 1
                return "All the bikes are broken"
            else
                x += 1
            end
        end    
        end
        # station.bike_array.select { |x| x.working == true }[0]
        # empty? ? (raise StandardError.new "There are no bikes") : @bike_array[-1].working == false ? (raise StandardError.new "The bike is broken") : @bike_array[-1]
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