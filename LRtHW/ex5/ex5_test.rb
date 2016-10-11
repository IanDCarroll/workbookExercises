require 'minitest/autorun'
require './ex5'

class Ex5Test < Minitest::Test

  def setup
    @ex5 = Ex5.new()
  end

  def test_line_1
    assert_output(/Let's talk about .+\./) { @ex5.variables }
  end
  def test_line_2
    assert_output(/They're \d+\.*\d* inches tall\./) { @ex5.variables }
  end
  def test_line_3
    assert_output(/They're \d+\.\d* pounds heavy\./) { @ex5.variables }
  end
  def test_line_4
    assert_output(/Actually that's not too heavy\./) { @ex5.variables }
  end
  def test_line_5
    assert_output(/They've got .+ eyes and .+ hair\./) { @ex5.variables }
  end
  def test_line_6
    assert_output(/Their teeth are usually .+ depending on the coffee\./) { @ex5.variables }
  end
  def test_line_7 # Does not validate that the aritmetic is correct!
    assert_output(/If I add \d+\.\d*, \d+\.\d*, and \d+\.\d* I get \d+\.\d*\./) { @ex5.variables }
  end

end
