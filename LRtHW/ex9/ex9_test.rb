require 'minitest/autorun'
require './ex9'

class Ex9Test < Minitest::Test

  def setup
    @ex9 = Ex9.new()
  end

  def test_line_1
    assert_output(/^Here are the days: Mon Tue Wed Thu Fri Sat Sun\n(.*\n).+$/) { @ex9.printingX3 }
  end
  def test_line_2
    assert_output(/^.*\nHere are the months: Jan\n(.*\n){11}.+$/) { @ex9.printingX3 }
  end
  def test_line_3
    assert_output(/^(.*\n){2}Feb\n(.*\n){10}.+$/) { @ex9.printingX3 }
  end
  def test_line_4
    assert_output(/^(.*\n){3}Mar\n(.*\n){9}.+$/) { @ex9.printingX3 }
  end
  def test_line_5
    assert_output(/^(.*\n){4}Apr\n(.*\n){8}.+$/) { @ex9.printingX3 }
  end
  def test_line_6
    assert_output(/^(.*\n){5}May\n(.*\n){7}.+$/) { @ex9.printingX3 }
  end
  def test_line_7
    assert_output(/^(.*\n){6}Jun\n(.*\n){6}.+$/) { @ex9.printingX3 }
  end
  def test_line_8
    assert_output(/^(.*\n){7}Jul\n(.*\n){5}.+$/) { @ex9.printingX3 }
  end
  def test_line_9
    assert_output(/^(.*\n){8}Aug\n(.*\n){4}.+$/) { @ex9.printingX3 }
  end
  def test_line_10
    assert_output(/^(.*\n){9}\n(.*\n){3}.+$/) { @ex9.printingX3 }
  end
  def test_line_11
    assert_output(/^(.*\n){10}There's something going on here\.\n(.*\n){2}.+$/) { @ex9.printingX3 }
  end
  def test_line_12
    assert_output(/^(.*\n){11}With the three double-quotes\.\n.*\n.+$/) { @ex9.printingX3 }
  end
  def test_line_13
    assert_output(/^(.*\n){12}We'll be able to type as much as we like\.\n.+$/) { @ex9.printingX3 }
  end
  def test_line_14
    assert_output(/^(.*\n){13}Even 4 lines if we want, or 5 or 6\.$/) { @ex9.printingX3 }
  end

end
