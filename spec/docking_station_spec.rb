require 'docking_station.rb'

describe DockingStation do
  it 'releases bike' do
    expect(DockingStation).to respond_to :release_bike
  end
end


# describe 'Greeter' do
#   it 'greets Rico' do
#     expect(greet('Rico')).to eq 'Hello, Rico, how are you today?'
#   end
# end

# expect(obj).to respond_to :save!