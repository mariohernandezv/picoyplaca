require_relative "picoplaca"
require "test/unit"
 
class TestPicoPlaca < Test::Unit::TestCase
 
  def test_simple
    assert_equal(false, Car.new.picoplaca("pyx0872", "2016-09-12", "12:12:12") )
    assert_equal(true, Car.new.picoplaca("pyx0871", "2016-09-12", "16:12:12") )
    assert_equal(true, Car.new.picoplaca("pyx0872", "2016-09-12", "9:12:12") )
    assert_equal(false, Car.new.picoplaca("pyx0872", "1999-09-12", "9:12:12") )
    assert_equal(true, Car.new.picoplaca("pyx0872", "2023-1-23", "9:12:12") )
  end
 
end