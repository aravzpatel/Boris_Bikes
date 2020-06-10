require 'docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it "get's a bike and then expects the bike to be working" do
    # expect(subject.release_bike).to be_instance_of Bike this checks if the release bike returns a bike
    expect(subject.release_bike.working?).to eql true
  end

  it { is_expected.to respond_to :dock_bike }

end



# describe 'Greeter' do
#   it 'greets Rico' do
#     expect(greet('Rico')).to eq 'Hello, Rico, how are you today?'
#   end
# end

# expect(obj).to respond_to :save!