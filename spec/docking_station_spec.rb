require 'docking_station'

describe DockingStation do 
  describe "#release_bike" do 
    it 'should release a bike' do 
      bike = Bike.new 
      expect(subject.release_bike).to eq(bike.working?)
    end 
  end 

  it { is_expected.to respond_to :release_bike }

  it { is_expected.to respond_to(:dock).with(1).argument }
end 
