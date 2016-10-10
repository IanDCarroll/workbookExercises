require 'minitest/autorun'
require './ex3'

class Ex3Test < Minitest::Test

  def setup
    @ex3 = Ex3.new()
  end

  # Diagnostic Existence Checks #

  def test_line_1_existence
    assert_output(/I will now count my chickens\./) { @ex3.math }
  end
  def test_line_2_existence
    assert_output(/Hens 30/) { @ex3.math }
  end
  def test_line_3_existence
    assert_output(/Roosters 97/) { @ex3.math }
  end
  def test_line_4_existence
    assert_output(/Now I will count the eggs:/) { @ex3.math }
  end
  def test_line_6_existence
    assert_output(/Is it true that 3 \+ 2 < 5 - 7\?/) { @ex3.math }
  end
  def test_line_8_existence
    assert_output(/What is 3 \+ 2\? 5/) { @ex3.math }
  end
  def test_line_9_existence
    assert_output(/What is 5 - 7\? -2/) { @ex3.math }
  end
  def test_line_10_existence
    assert_output(/Oh, that's why it's false\./) { @ex3.math }
  end
  def test_line_11_existence
    assert_output(/How about some more\./) { @ex3.math }
  end
  def test_line_12_existence
    assert_output(/Is it greater\? true/) { @ex3.math }
  end
  def test_line_13_existence
    assert_output(/Is it greater or equal\? true/) { @ex3.math }
  end
  def test_line_14_existence
    assert_output(/Is it less or equal\? false/) { @ex3.math }
  end

  # Positioning Tests # 

  def test_line_1_position
    assert_output(/^I will now count my chickens\.\n/) { @ex3.math }
  end
  def test_line_2_position
    assert_output(/^.*\nHens 30\n/) { @ex3.math }
  end
  def test_line_3_position
    assert_output(/^(.*\n){2}Roosters 97\n/) { @ex3.math }
  end
  def test_line_4_position
    assert_output(/^(.*\n){3}Now I will count the eggs:\n/) { @ex3.math }
  end
  def test_line_5_position
    assert_output(/^(.*\n){4}7\n/) { @ex3.math }
  end
  def test_line_6_position
    assert_output(/^(.*\n){5}Is it true that 3 \+ 2 < 5 - 7\?\n/) { @ex3.math }
  end
  def test_line_7_position
    assert_output(/^(.*\n){6}false\n(.*\n){7}$/) { @ex3.math }
  end
  def test_line_8_position
    assert_output(/^(.*\n){7}What is 3 \+ 2\? 5\n(.*\n){6}$/) { @ex3.math }
  end
  def test_line_9_position
    assert_output(/What is 5 - 7\? -2\n(.*\n){5}$/) { @ex3.math }
  end
  def test_line_10_position
    assert_output(/Oh, that's why it's false\.\n(.*\n){4}$/) { @ex3.math }
  end
  def test_line_11_position
    assert_output(/How about some more\.\n(.*\n){3}$/) { @ex3.math }
  end
  def test_line_12_position
    assert_output(/Is it greater\? true\n(.*\n){2}$/) { @ex3.math }
  end
  def test_line_13_position
    assert_output(/Is it greater or equal\? true\n.*\n$/) { @ex3.math }
  end
  def test_line_14_position
    assert_output(/Is it less or equal\? false\n$/) { @ex3.math }
  end

end
