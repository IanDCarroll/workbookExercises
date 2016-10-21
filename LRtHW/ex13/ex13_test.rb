require 'minitest/autorun'
require './ex13'

class Ex13Test < Minitest::Test

  def setup
    @ex13 = Ex13.new()
  end

  def test_line_1
    assert_output(/^Your first variable is: .*\n.(+\n){2}$/) { @ex13.argument_dept }
  end
  def test_line_2
    assert_output(/^.+\nYour second variable is: .*\n.+\n$/) { @ex13.argument_dept }
  end
  def test_line_3
    assert_output(/^(.+\n){2}Your third variable is: .*\n$/) { @ex13.argument_dept }
  end

end
