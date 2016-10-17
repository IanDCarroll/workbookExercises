require 'minitest/autorun'
require './ex10'

class Ex10Test < Minitest::Test

  def setup
    @ex10 = Ex10.new()

  def test
    assert_output(//) { @ex10.whatWasThat }
  end

end
