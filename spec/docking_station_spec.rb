require 'docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
end


# describe 'Greeter' do
#   it 'greets Rico' do
#     expect(greet('Rico')).to eq 'Hello, Rico, how are you today?'
#   end
# end

# expect(obj).to respond_to :save!