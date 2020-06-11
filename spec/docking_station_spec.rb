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

  describe "#has_docked_bike" do
    it "returns bike name when asked, if bike exists" do
      dockingstation = DockingStation.new
      bike = Bike.new
      dockingstation.docked_bike(bike)
      expect(dockingstation.has_docked_bike).to eql(bike)
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
      docking_station.docked_bike(Bike.new)
      expect { docking_station.docked_bike(Bike.new) }.to raise_error(StandardError)
    end
  end



end