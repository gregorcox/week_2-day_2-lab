require("minitest/autorun")
require_relative("../person.rb")
require("minitest/rg")

class PersonTest < MiniTest::Test

  def setup
    @passenger1 = Person.new("John", 30)
    passenger2 = Person.new("Tony", 30)
  end

  def test_passenger_has_name
    assert_equal("John", @passenger1.name())
  end








end
