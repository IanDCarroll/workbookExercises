require 'minitest/autorun'
require './ex7'

class Ex7Test < Minitest::Test

  def setup
    @ex7 = Ex7.new()
  end

  def test_line_
    assert_output(/Mary had a little lamb\./) { @ex7.more_printing }
  end
  def test_line_
    assert_output(/Its fleece was white as snow\./) { @ex7.more_printing }
  end
  def test_line_
    assert_output(/And everywhere that Mary went\./) { @ex7.more_printing }
  end
  def test_line_
    assert_output(/\.{10}/) { @ex7.more_printing }
  end
  def test_line_
    assert_output(/CheeseBurger/) { @ex7.more_printing }
  end

end
