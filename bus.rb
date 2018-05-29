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

  def pick_up(person)
    @passengers.push(person)
  end

  def drop_off(person)
    @passengers.delete(person)
  end

  def empty_bus
    @passengers.clear
  end

  def stop_at_bus_stop(bus_stop)
    passengers_waiting = bus_stop.queue()
    for passenger in passengers_waiting
      pick_up(passenger)
    end
    bus_stop.empty_queue
  end

end
