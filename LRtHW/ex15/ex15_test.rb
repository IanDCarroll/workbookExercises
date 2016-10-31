require 'minitest/autorun'
require './ex15'

class Ex15Test < Minitest::Test

  def setup
    @ex15 = Ex15.new()
  end

  def test_something
    assert_output(//) { @ex15.read }
  end

end
