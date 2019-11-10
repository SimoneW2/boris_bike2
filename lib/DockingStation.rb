require_relative 'bike'
class DockingStation
  def release_bike
    Bike.new #Now this method produces/returns a bike instance from the Bike class in the Bike.rb file
  end


  def dock(bike)
    @bike = bike
  end
  # RECOMMENDED CODE FOR THE DOCK METHOD ABOVE
  # def dock(bike)
  #   bike  # We need to return the bike we dock
  # end


  #RECOMMENDED CODE FROM WALKTHROUGH
  #NOT SURE WHY NEEDED WHEN IT RETURNS THE SAME BIKE INSTANCE AS ABOVE
  # let's add to our #bike method to return the
  # bike we docked
  def bike
    @bike
  end
end
