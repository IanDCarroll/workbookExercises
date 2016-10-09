require 'minitest/autorun'
require './ex3'

class Ex3Test < Minitest::Test

  def setup
    @ex3 = Ex3.new()
  end

  def test_line_1
    assert_output(/I will now count my chickens/) { @ex3.math }
  end
  def test_line_2
    assert_output(/Hens 30/) { @ex3.math }
  end
  def test_line_3
    assert_output(/Roosters 97/) { @ex3.math }
  end
  def test_line_4
    assert_output(/Now I will count the eggs:/) { @ex3.math }
  end
#  def test_line_6
#    assert_output(/Is it true that 3 + 2 < 5 - 7?/) { @ex3.math }
#  end
#  def test_line_8
#    assert_output(/What is 3 + 2? 5/) { @ex3.math }
#  end
#  def test_line_9
#    assert_output(/What is 5 - 7? -2/) { @ex3.math }
#  end
  def test_line_10
    assert_output(/Oh, that's why it's false./) { @ex3.math }
  end
  def test_line_11
    assert_output(/How about some more./) { @ex3.math }
  end
#  def test_line_12
#    assert_output(/Is it greater? true/) { @ex3.math }
#  end
#  def test_line_13
#    assert_output(/Is it greater or equal? true/) { @ex3.math }
#  end
  def test_line_14
    assert_output(/Is it less or equal? false/) { @ex3.math }
  end
#  def test_text
#    assert_output(/^I will now count my chickens:
#Hens 30
#Roosters 97
#Now I will count the eggs:
#7
#Is it true that 3 + 2 < 5 - 7?
#false
#what is 3 + 2? 5
#what is 5 - 7? -2
#Oh, that's why it's false.
#How about some more.
#Is it greater? true
#Is it greater or equal? true
#Is it less or equal? false\n$/) { @ex3.math }
#  end

end
