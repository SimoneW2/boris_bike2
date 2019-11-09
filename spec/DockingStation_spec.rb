require 'DockingStation'

describe 'DockingStation class' do
  it 'checks DockingStation class is created' do
    docking_station = DockingStation.new
    expect(docking_station).to be_instance_of(DockingStation)
  end
end
