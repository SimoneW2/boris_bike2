require 'DockingStation'

describe DockingStation do
  it 'checks DockingStation class is created' do
    docking_station = DockingStation.new
    expect(docking_station).to be_instance_of(DockingStation)
  end

#User want the docking station to release a bike
  it 'responds to release_bike' do
    #docking_station = DockingStation.new ----this means subject below
    expect(subject).to respond_to :release_bike
  end

# alternative way to write expect syntax for test above
#   describe DockingStation do
#   it { is_expected.to respond_to :release_bike }
#   end


#User wants to get a working bike from the docking station
  it 'responds to release_bike method' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
  expect(bike).to respond_to :working?
  end

#User wants to return bike and dock it at the docking station (dock the bike.).
  it 'responds to the dock method with one argument' do
    docking_station = DockingStation.new #Creates an instance of the docking station
    bike = docking_station.release_bike#Creates an instance of the bike
    expect(docking_station).to respond_to(:dock).with(1).argument #we want the method dock to pass the bike instance as an argument dock(bike)
  end

  #Checks a bike method is responsive to the docking_station but not sure why it's created
  it { is_expected.to respond_to(:bike) }

  # it 'should pass bike instance into the dock method' do
  #   docking_station = DockingStation.new #Creates an instance of the docking station
  #   bike = docking_station.release_bike#Creates an instance of the bike
  # expect(docking_station.dock).to eq bike
  # end
end
