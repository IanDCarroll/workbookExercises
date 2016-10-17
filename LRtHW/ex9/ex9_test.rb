require 'minitest/autorun'
require './ex9'

class Ex9Test < Minitest::Test

  def setup
    @ex9 = Ex9.new()
  end

  def test_line_1
    assert_output(/Here are the days: Mon Tue Wed Thu Fri Sat Sun/) { @ex9.printingX3 }
  end
  def test_line_2
    assert_output(/Here are the months: Jan/) { @ex9.printingX3 }
  end
  def test_line_3
    assert_output(/Feb/) { @ex9.printingX3 }
  end
  def test_line_4
    assert_output(/Mar/) { @ex9.printingX3 }
  end
  def test_line_5
    assert_output(/Apr/) { @ex9.printingX3 }
  end
  def test_line_6
    assert_output(/May/) { @ex9.printingX3 }
  end
  def test_line_7
    assert_output(/Jun/) { @ex9.printingX3 }
  end
  def test_line_8
    assert_output(/Jul/) { @ex9.printingX3 }
  end
  def test_line_9
    assert_output(/Aug/) { @ex9.printingX3 }
  end
  def test_line_10
    assert_output(//) { @ex9.printingX3 }
  end
  def test_line_11
    assert_output(/There's something going on here\./) { @ex9.printingX3 }
  end
  def test_line_12
    assert_output(/With the three double-quotes\./) { @ex9.printingX3 }
  end
  def test_line_13
    assert_output(/We'll be able to as much as we like\./) { @ex9.printingX3 }
  end
  def test_line_14
    assert_output(/Even 4 lines if we want, or 5 or 6\./) { @ex9.printingX3 }
  end

end
