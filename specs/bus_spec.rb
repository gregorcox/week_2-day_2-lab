require("minitest/autorun")
require_relative("../bus.rb")
require_relative("../person.rb")
require("minitest/rg")

class BusTest < MiniTest::Test

  def setup
    @passenger1 = Person.new("John", 30)
    @passenger2 = Person.new("Tony", 30)
    @bus1 = Bus.new(22, "Leith", [@passenger1,@passenger2])
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








end
