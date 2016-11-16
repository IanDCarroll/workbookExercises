require 'minitest/autorun'
require './ex10'

class Ex10Test < Minitest::Test

  def setup
    @ex10 = Ex10.new()
  end

  def test_line_1
    assert_output(/^\tI'm tabbed in\.\n(.*\n){8}.+$/) { @ex10.whatWasThat }
  end
  def test_line_2
    assert_output(/^.*\nI'm split\n(.*\n){7}.+$/) { @ex10.whatWasThat }
  end
  def test_line_3
    assert_output(/^(.*\n){2}on a line\.\n(.*\n){6}.+$/) { @ex10.whatWasThat }
  end
  def test_line_4
    assert_output(/^(.*\n){3}I'm \\ a \\ cat\.\n(.*\n){5}.+$/) { @ex10.whatWasThat }
  end
  def test_line_5
    assert_output(/^(.*\n){4}\n(.*\n){4}.+$/) { @ex10.whatWasThat }
  end
  def test_line_6
    assert_output(/^(.*\n){5}I'll do a list:\n(.*\n){3}.+$/) { @ex10.whatWasThat }
  end
  def test_line_7
    assert_output(/^(.*\n){6}\t\* Cat food\n(.*\n){2}.+$/) { @ex10.whatWasThat }
  end
  def test_line_8
    assert_output(/^(.*\n){7}\t\* Fishes\n.*\n.+$/) { @ex10.whatWasThat }
  end
  def test_line_9
    assert_output(/^(.*\n){8}\t\* Catnip\n.+$/) { @ex10.whatWasThat }
  end
  def test_line_10
    assert_output(/^(.*\n){9}\t\* Grass$/) { @ex10.whatWasThat }
  end

end
