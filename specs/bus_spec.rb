require("minitest/autorun")
require_relative("../bus.rb")
require_relative("../person.rb")
require_relative("../bus_stop.rb")
require("minitest/rg")

class BusTest < MiniTest::Test

  def setup
    @passenger1 = Person.new("John", 30)
    @passenger2 = Person.new("Tony", 30)
    @passenger3 = Person.new("Zsolt", 30)
    @passenger4 = Person.new("Scott", 30)
    @bus1 = Bus.new(22, "Leith", [@passenger1,@passenger2])
    @bus2 = Bus.new(22, "Leith", [])
    @bus_stop1 = BusStop.new("Princes St", [@passenger1,@passenger2, @passenger3, @passenger4])

  end


  def test_drive
    bus = Bus.new(22, "Leith", [])
    assert_equal("Brum Brum", bus.drive())
  end

  def test_number_of_passengers
    bus = Bus.new(22, "Leith", ["John"])
    assert_equal(1, bus.number_of_passengers())
  end

  def test_pick_up_passenger
    bus = Bus.new(22, "Leith", [])
    passenger1 = Person.new("John", 30)
    bus.pick_up(passenger1)
    assert_equal(1, bus.number_of_passengers())
  end

  def test_drop_off_passenger
    # passenger1 = Person.new("John", 30)
    bus = Bus.new(22, "Leith", [@passenger1])
    bus.drop_off(@passenger1)
    assert_equal(0, bus.number_of_passengers())
  end

  def test_empty_bus
    @bus1.empty_bus
    assert_equal(0, @bus1.number_of_passengers())
  end

  def test_pickup_from_stop
    @bus2.stop_at_bus_stop(@bus_stop1)
    assert_equal(4, @bus2.number_of_passengers())
    assert_equal(0, @bus_stop1.length_of_queue)
  end








end
