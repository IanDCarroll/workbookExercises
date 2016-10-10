require 'minitest/autorun'
require './ex4'

class Ex4Test < Minitest::Test

  def setup
    @ex4 = Ex4.new()
  end 

  # Existence tests #

  def test_line_1_existence
    assert_output(/There are \d{1,5} cars available\./) { @ex4.names }
  end
  def test_line_2_existence
    assert_output(/There are only \d{1,5} drivers available\./) { @ex4.names }
  end
  def test_line_3_existence
    assert_output(/There will be \d{1,5} empty cars today\./) { @ex4.names }
  end
  def test_line_4_existence
    assert_output(/We can transport \d{1,5} people today\./) { @ex4.names }
  end
  def test_line_5_existence
    assert_output(/We have \d{1,5} to carpool today\./) { @ex4.names }
  end
  def test_line_6_existence
    assert_output(/We need to put about \d{1,5} in each car\./) { @ex4.names }
  end

  # Positioning tests #

  def test_line_1_position
    assert_output(/^There are \d{1,5} cars available\.\n(.*\n){5}$/) { @ex4.names }
  end
  def test_line_2_position
    assert_output(/^.*\nThere are only \d{1,5} drivers available\.\n(.*\n){4}$/) { @ex4.names }
  end
  def test_line_3_position
    assert_output(/^(.*\n){2}There will be \d{1,5} empty cars today\.\n(.*\n){3}$/) { @ex4.names }
  end
  def test_line_4_position
    assert_output(/^(.*\n){3}We can transport \d{1,5} people today\.\n(.*\n){2}$/) { @ex4.names }
  end
  def test_line_5_position
    assert_output(/^(.*\n){4}We have \d{1,5} to carpool today\.\n.*\n$/) { @ex4.names }
  end
  def test_line_6_position
    assert_output(/^(.*\n){5}We need to put about \d{1,5} in each car\.\n$/) { @ex4.names }
  end


 end
