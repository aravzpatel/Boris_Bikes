class DockingStation
    def release_bike
        Bike.new #if we defined this as a variable then we wouldn't be able to read the variable outside of the class, so have to retunr just the class
    end
end