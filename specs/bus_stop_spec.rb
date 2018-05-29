require("minitest/autorun")
require_relative("../bus.rb")
require_relative("../person.rb")
require_relative("../bus_stop.rb")
require("minitest/rg")

class BusStopTest < MiniTest::Test

  def setup
    @bus_stop1 = BusStop.new("Princes St", [])
    @bus_stop2 = BusStop.new("George St", [])
  end

  def test_length_of_queue
    assert_equal(0, @bus_stop1.length_of_queue())
  end

  def test_add_to_queue
    @bus_stop1.add_to_queue(@passenger1)
    assert_equal(1, @bus_stop1.length_of_queue())
  end

  def test_empty_queue
    @bus_stop1.empty_queue
    assert_equal(0, @bus_stop1.length_of_queue)
  end












end
