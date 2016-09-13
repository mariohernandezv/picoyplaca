require_relative "picoplaca"
require "test/unit"
 
class TestPicoPlaca < Test::Unit::TestCase
 
  def test_simple
    assert_equal(false, picoplaca("pyx0872", "2016-09-12", "12:12:12") )
    assert_equal(true, picoplaca("pyx0871", "2016-09-12", "16:12:12") )
    assert_equal(true, picoplaca("pyx0872", "2016-09-12", "9:12:12") )
  end
 
end