require_relative '../lib/docking_station'

describe DockingStation do 

  describe "#release_bike" do 
    it 'should release a bike' do 
      bike = Bike.new 
      subject.dock(bike) 
      expect(subject.release_bike).to eq bike 
    end 

    it "raises an error when there are no bikes available" do 
      expect{subject.release_bike}.to raise_error "No bikes available" 
    end 

    it { is_expected.to respond_to :release_bike }
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  describe "#dock" do
    it 'docks something' do 
      bike = Bike.new 
      expect(subject.dock(bike)).to eq bike 
    end

    it "raises and error when the dock is full" do
      subject.dock(Bike.new)
      expect{ subject.dock(Bike.new) }.to raise_error "The Docking Station is full"
    end

  end
   

  it 'returns docked bikes' do 
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike 
  end 

  

  it { is_expected.to respond_to(:bike) } 

end 
