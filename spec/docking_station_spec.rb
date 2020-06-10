require 'docking_station.rb'

describe DockingStation do
  xit { is_expected.to respond_to :release_bike }

  xit "get's a bike and then expects the bike to be working" do
    expect(station.release_bike.working?).to eql true
  end

  xit { is_expected.to respond_to :dock_bike }

  xit "has a bike which can be docked at the docking station" do
    bike = subject.release_bike
    expect(subject.dock_bike(bike)).to eql true
  end

  xit "shows which bike is docked at the docking station" do
    bike = subject.release_bike
    subject.dock_bike(bike)
    expect(subject.docked_bike).to eql bike
  end

  xit { should respond_to :docked_bike}

  it "raises error if the docking station is empty and is asked to release_bike" do
    expect { subject.release_bike }.to raise_error(StandardError, 'No Bike Bruv')
  end
end



# describe 'Greeter' do
#   it 'greets Rico' do
#     expect(greet('Rico')).to eq 'Hello, Rico, how are you today?'
#   end
# end

# expect(obj).to respond_to :save!