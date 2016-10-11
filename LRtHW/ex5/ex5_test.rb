require 'minitest/autorun'
require './ex5'

class Ex5Test < Minitest::Test

  def setup
    @ex5 = Ex5.new()
  end

  # Existence checks #

  def test_line_1_existence
    assert_output(/Let's talk about .+\./) { @ex5.variables }
  end
  def test_line_2_existence
    assert_output(/They're \d+\.*\d* inches tall\./) { @ex5.variables }
  end
  def test_line_3_existence
    assert_output(/They're \d+\.*\d* pounds heavy\./) { @ex5.variables }
  end
  def test_line_4_existence
    assert_output(/Actually that's not too heavy\./) { @ex5.variables }
  end
  def test_line_5_existence
    assert_output(/They've got .+ eyes and .+ hair\./) { @ex5.variables }
  end
  def test_line_6_existence
    assert_output(/Their teeth are usually .+ depending on the coffee\./) { @ex5.variables }
  end
  def test_line_7_existence # Does not validate that the aritmetic is correct!
    assert_output(/If I add \d+\.*\d*, \d+\.*\d*, and \d+\.*\d* I get \d+\.*\d*\./) { @ex5.variables }
  end

  # Positioning tests #

  def test_line_1_position
    assert_output(/^Let's talk about .+\.\n(.*\n){6}$/) { @ex5.variables }
  end
  def test_line_2_position
    assert_output(/^.*\nThey're \d+\.*\d* inches tall\.\n(.*\n){5}$/) { @ex5.variables }
  end
  def test_line_3_position
    assert_output(/^(.*\n){2}They're \d+\.*\d* pounds heavy\.\n(.*\n){4}$/) { @ex5.variables }
  end
  def test_line_4_position
    assert_output(/^(.*\n){3}Actually that's not too heavy\.\n(.*\n){3}$/) { @ex5.variables }
  end
  def test_line_5_position
    assert_output(/^(.*\n){4}They've got .+ eyes and .+ hair\.\n(.*\n){2}$/) { @ex5.variables }
  end
  def test_line_6_position
    assert_output(/^(.*\n){5}Their teeth are usually .+ depending on the coffee\.\n.*\n$/) { @ex5.variables }
  end
  def test_line_7_position # Does not validate that the aritmetic is correct!
    assert_output(/^(.*\n){6}If I add \d+\.*\d*, \d+\.*\d*, and \d+\.*\d* I get \d+\.*\d*\.\n$/) { @ex5.variables }
  end
end
