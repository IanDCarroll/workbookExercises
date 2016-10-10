require 'minitest/autorun'
require './ex3'

class Ex3Test < Minitest::Test

  def setup
    @ex3 = Ex3.new()
  end

  def test_line_1
    assert_output(/^I will now count my chickens\.\n/) { @ex3.math }
  end
  def test_line_2
    assert_output(/^.*\nHens 30\n/) { @ex3.math }
  end
  def test_line_3
    assert_output(/^.*\n.*\nRoosters 97\n/) { @ex3.math }
  end
  def test_line_4
    assert_output(/^.*\n.*\n.*\nNow I will count the eggs:\n/) { @ex3.math }
  end
  def test_line_5
    assert_output(/^.*\n.*\n.*\n.*\n7\n/) { @ex3.math }
  end
  def test_line_6
    assert_output(/^.*\n.*\n.*\n.*\n.*\nIs it true that 3 \+ 2 < 5 - 7\?\n/) { @ex3.math }
  end
  def test_line_7
    assert_output(/^.*\n.*\n.*\n.*\n.*\n.*\nfalse\n/) { @ex3.math }
  end
  def test_line_8
    assert_output(/What is 3 \+ 2\? 5\n.*\n.*\n.*\n.*\n.*\n.*\n$/) { @ex3.math }
  end
  def test_line_9
    assert_output(/What is 5 - 7\? -2\n.*\n.*\n.*\n.*\n.*\n$/) { @ex3.math }
  end
  def test_line_10
    assert_output(/Oh, that's why it's false\.\n.*\n.*\n.*\n.*\n$/) { @ex3.math }
  end
  def test_line_11
    assert_output(/How about some more\.\n.*\n.*\n.*\n$/) { @ex3.math }
  end
  def test_line_12
    assert_output(/Is it greater\? true\n.*\n.*\n$/) { @ex3.math }
  end
  def test_line_13
    assert_output(/Is it greater or equal\? true\n.*\n$/) { @ex3.math }
  end
  def test_line_14
    assert_output(/Is it less or equal\? false\n$/) { @ex3.math }
  end

end
