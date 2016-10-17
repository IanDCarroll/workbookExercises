require 'minitest/autorun'
require './ex8'

class Ex8Test < Minitest::Test

  def setup
    @ex8 = Ex8.new()
  end

  def test_line_1
    assert_output(/^1 2 3 4\n(.*\n){4}$/) { @ex8.printingX2 }
  end
  def test_line_2
    assert_output(/^.*\none two three four\n(.*\n){3}$/) { @ex8.printingX2 }
  end
  def test_line_3
    assert_output(/^(.*\n){2}true false true false\n(.*\n){2}$/) { @ex8.printingX2 }
  end
  def test_line_4
    assert_output(/^(.*\n){3}(%{first} %{second} %{third} %{fourth} ){3}%{first} %{second} %{third} %{fourth}\n.*\n$/) { @ex8.printingX2 }
  end
  def test_line_5
    assert_output(/^(.*\n){4}I had this thing\. That you could type up right\. But it didn't sing\. So I said goodnight\.\n$/) { @ex8.printingX2 }
  end

end
