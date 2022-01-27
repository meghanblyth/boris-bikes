require 'docking_station'

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

  it 'docks something' do 
    bike = Bike.new 
    expect(subject.dock(bike)).to eq bike 
  end 

  it 'returns docked bikes' do 
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike 
  end 

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike) } 

end 
