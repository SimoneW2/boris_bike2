require 'DockingStation'

describe DockingStation do
  it 'checks DockingStation class is created' do
    docking_station = DockingStation.new
    expect(docking_station).to be_instance_of(DockingStation)
  end

  it 'responds to release_bike' do
    #docking_station = DockingStation.new ----this means subject below
    expect(subject).to respond_to :release_bike
  end

# alternative way to write expect syntax for test above
#   describe DockingStation do
#   it { is_expected.to respond_to :release_bike }
#   end
  it 'responds to release_bike method' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
  expect(bike).to respond_to :working?
  end
end
