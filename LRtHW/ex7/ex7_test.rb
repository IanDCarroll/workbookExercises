require 'minitest/autorun'
require './ex7'

class Ex7Test < Minitest::Test

  def setup
    @ex7 = Ex7.new()
  end

  def test_line_1
    assert_output(/^Mary had a little lamb\.\n(.*\n){4}$/) { @ex7.more_printing }
  end
  def test_line_2
    assert_output(/^.*\nIts fleece was white as snow\.\n(.*\n){3}$/) { @ex7.more_printing }
  end
  def test_line_3
    assert_output(/^(.*\n){2}And everywhere that Mary went\.\n(.*\n){2}$/) { @ex7.more_printing }
  end
  def test_line_4
    assert_output(/^(.*\n){3}\.{10}\n.*\n$/) { @ex7.more_printing }
  end
  def test_line_5
    assert_output(/^(.*\n){4}CheeseBurger\n$/) { @ex7.more_printing }
  end

end
