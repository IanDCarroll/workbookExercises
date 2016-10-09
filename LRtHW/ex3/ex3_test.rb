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
    assert_output(/^.{29}\nHens 30\n/) { @ex3.math }
  end
  def test_line_3
    assert_output(/^.{29}\n.{7}\nRoosters 97\n/) { @ex3.math }
  end
  def test_line_4
    assert_output(/^.{29}\n.{7}\n.{11}\nNow I will count the eggs:\n/) { @ex3.math }
  end
  def test_line_5
    assert_output(/^.{29}\n.{7}\n.{11}\n.{26}\n7\n/) { @ex3.math }
  end
  def test_line_6
    assert_output(/^.{29}\n.{7}\n.{11}\n.{26}\n.\nIs it true that 3 \+ 2 < 5 - 7\?/) { @ex3.math }
  end
  def test_line_7
    assert_output(/^.{29}\n.{7}\n.{11}\n.{26}\n.\n.{30}\nfalse\n/) { @ex3.math }
  end
  def test_line_8
    assert_output(/What is 3 \+ 2\? 5\n.{17}\n.{26}\n.{20}\n.{19}\n.{28}\n.{26}\n$/) { @ex3.math }
  end
  def test_line_9
    assert_output(/What is 5 - 7\? -2\n.{26}\n.{20}\n.{19}\n.{28}\n.{26}\n$/) { @ex3.math }
  end
  def test_line_10
    assert_output(/Oh, that's why it's false\.\n.{20}\n.{19}\n.{28}\n.{26}\n$/) { @ex3.math }
  end
  def test_line_11
    assert_output(/How about some more\.\n.{19}\n.{28}\n.{26}\n$/) { @ex3.math }
  end
  def test_line_12
    assert_output(/Is it greater\? true\n.{28}\n.{26}\n$/) { @ex3.math }
  end
  def test_line_13
    assert_output(/Is it greater or equal\? true\n.{26}\n$/) { @ex3.math }
  end
  def test_line_14
    assert_output(/Is it less or equal\? false\n$/) { @ex3.math }
  end
#  def test_text
#    assert_output(/^I will now count my chickens:\nHens 30\nRoosters 97\nNow I will count the eggs:\n7\nIs it true that 3 \+ 2 < 5 - 7\?\nfalse\nWhat is 3 \+ 2\? 5\nWhat is 5 - 7\? -2\nOh, that's why it's false\.\nHow about some more\.\nIs it greater\? true\nIs it greater or equal\? true\nIs it less or equal\? false\n$/) { @ex3.math }
#  end

end
