require './lib/bike'

class DockingStation
    attr_reader :has_docked_bike

    def release_bike
        @has_docked_bike == nil ? (raise StandardError.new "There are no bikes") : Bike.new
        # Bike.new #if we defined this as a variable then we wouldn't be able to read the variable outside of the class, so have to retunr just the class
    end

    def docked_bike(bike)
        @has_docked_bike = bike
        true
    end
    
end