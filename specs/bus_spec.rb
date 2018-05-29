require("minitest/autorun")
require_relative("../bus.rb")
require_relative("../person.rb")
require("minitest/rg")

class BusTest < MiniTest::Test


  def test_drive
    bus = Bus.new(22, "Leith", [])
    assert_equal("Brum Brum", bus.drive())
  end

  def test_number_of_passengers
    bus = Bus.new(22, "Leith", ["John"])
    assert_equal(1, bus.number_of_passengers())
  end








end
