require 'docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  # it "responds to release_bike" do
  #   expect(subject.docked_bike(Bike.new)).to respond_to :release_bike
  # end

  it "get's a bike and then expects the bike to be working" do
    # expect(subject.release_bike).to be_instance_of Bike this checks if the release bike returns a bike
    station = DockingStation.new
    station.docked_bike(Bike.new)
    expect(station.release_bike.working?).to eql true
  end

  #it { is_expected.to respond_to :dock_bike }

  describe "#docked_bike" do
    it "docks a bike when I give it a bike" do
      dockingstation = DockingStation.new
      bike = Bike.new
      expect(dockingstation.docked_bike(bike)).to eql true
    end
  end

  describe "#bike_array" do
    it "returns bike name when asked, if bike exists" do
      dockingstation = DockingStation.new
      bike = Bike.new
      dockingstation.docked_bike(bike)
      expect(dockingstation.bike_array[0]).to eql(bike)
    end
  end

  describe "#release_bike fails if the dock is empty" do
    it "raises an error if the dock is empty" do
      docking_station = DockingStation.new
      expect { docking_station.release_bike }.to raise_error(StandardError)
    end
  end

  describe "#docked_bike fails if the dock is full" do
    it "raises an error if dock is full" do
      docking_station = DockingStation.new
      DEFAULT_CAPACITY.times { docking_station.docked_bike(Bike.new) }
      expect { docking_station.docked_bike(Bike.new) }.to raise_error(StandardError)
    end
  end

  describe "check that the private methods are private" do
    it "raises a NoMethodError when empty? is called outside of the class" do
      expect { subject.empty? }.to raise_error(NoMethodError)
    end

    it "raises a NoMethodError when full? is called outside of the class" do
      expect { subject.full? }.to raise_error(NoMethodError)
    end
  end

  describe "each station has a default capacity" do
    it "returns the default capacity as an integer" do
      expect( DEFAULT_CAPACITY ).to be_an_instance_of(Integer)
    end
  end

  describe "each station has an individual default capacity" do
    it "returns the capacity of the station" do
      expect(subject.capacity).to be_an_instance_of(Integer)
    end

    it "sets the capacity of the station when given a value" do
      station = DockingStation.new(30)
      expect(station.capacity).to eql(30)
    end
  end
end