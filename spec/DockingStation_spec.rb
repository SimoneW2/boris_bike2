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

  #Checks a bike method is responsive to the docking_station but not sure why it's created.
  #Course walkthrough advice
  it { is_expected.to respond_to(:bike) }

#MY WAY
#dock method was empty. so we start with just returning bike instance in the method
  it 'should pass bike instance into the dock method to dock returned bike' do
    docking_station = DockingStation.new #Creates an instance of the docking station
    bike = docking_station.release_bike#Creates an instance of the bike
  expect(docking_station.dock(bike)).to eq bike
  end

# #COURSE WALK THROUGH FOR STEP ABOVE
# # first, let's update our test for #dock
#   it 'docks something' do
#     bike = Bike.new
#     # We want to return the bike we dock
#     expect(subject.dock(bike)).to eq bike
#   end

# #RECOMMENDED COURSE WALK THROUGH
# it 'returns docked bikes' do
#     bike = Bike.new
#     subject.dock(bike)
#     # Again, we need to return the bike we just docked
#     expect(subject.bike).to eq bike
#   end
end
