require 'docking_station'

describe DockingStation do 
  describe "#release_bike" do 
    it 'should repsond to release bike method' do
      docking_station = DockingStation.new
      expect(docking_station).to respond_to(:release_bike)
    end  
  end 
  
  describe "#release_bike" do 
    it 'should release a bike' do 
      docking_station = DockingStation.new
      bike = Bike.new 
      expect(docking_station.release_bike).to eq(bike.working?)
    end 
  end 

  it { is_expected.to respond_to(:dock).with(1).argument }
end


#it { is_expected.to respond_to :release_bike }

