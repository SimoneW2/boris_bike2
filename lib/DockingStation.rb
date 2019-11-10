require_relative 'bike'
class DockingStation
  def release_bike
    Bike.new #Now this method produces/returns a bike instance from the Bike class in the Bike.rb file
  end
  def dock(bike)
    @bike = bike
  end
  def bike
  end
end
