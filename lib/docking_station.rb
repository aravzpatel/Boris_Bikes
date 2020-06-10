require '.\lib\bike.rb'

class DockingStation
    attr_reader :docked_bike

    #def initialize()
    #     @docked_bike = Bike.new
    # end

    def release_bike
        raise StandardError.new 'No Bike Bruv' if @docked_bike == nil
        Bike.new #if we defined this as a variable then we wouldn't be able to read the variable outside of the class, so have to retunr just the class
    end

    def dock_bike(bike)
        @docked_bike = bike
        true
    end
end