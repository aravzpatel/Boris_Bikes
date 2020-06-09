require 'bike.rb'

describe Bike do
    it 'should release bike' do
        expect(subject).to respond_to :working?
    end
end