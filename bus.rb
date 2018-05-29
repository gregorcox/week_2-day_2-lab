class Bus

  def initialize(route, destination, passengers)
    @route = route
    @destination = destination
    @passengers = passengers
  end

  def drive()
    return "Brum Brum"
  end

  def number_of_passengers()
    return @passengers.length
  end


end
