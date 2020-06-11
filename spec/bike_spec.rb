require 'bike.rb'

describe Bike do
    it 'should release bike' do
        expect(subject).to respond_to :working
    end

    it "should store whether the bike is working?" do
        subject.working = false
        expect(subject.working).to eql(false)
    end
end