require 'minitest/autorun'
require './ex10'

class Ex10Test < Minitest::Test

  def setup
    @ex10 = Ex10.new()
  end

  def test_line_1
    assert_output(/\tI'm tabbed in\.\n/) { @ex10.whatWasThat }
  end
  def test_line_2
    assert_output(/I'm split\n/) { @ex10.whatWasThat }
  end
  def test_line_3
    assert_output(/on a line\./) { @ex10.whatWasThat }
  end
  def test_line_4
    assert_output(/I'm  a  cat./) { @ex10.whatWasThat }
  end
  def test_line_5
    assert_output(/\n/) { @ex10.whatWasThat }
  end
  def test_line_6
    assert_output(/I'll do a list:\n/) { @ex10.whatWasThat }
  end
  def test_line_7
    assert_output(/\t\* Cat food\n/) { @ex10.whatWasThat }
  end
  def test_line_8
    assert_output(/\t\* Fishes\n/) { @ex10.whatWasThat }
  end
  def test_line_9
    assert_output(/\t\* Catnip\n/) { @ex10.whatWasThat }
  end
  def test_line_10
    assert_output(/\t\* Grass\n/) { @ex10.whatWasThat }
  end

end
