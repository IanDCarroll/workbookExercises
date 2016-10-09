require 'minitest/autorun'
require './ex1'

class TestBlog < Minitest::Test

  def setup
    @ex1 = Ex1.new
  end

  def test_line_1
    assert_output(/Hello World!\n/) { @ex1.firstProgram }
  end
  def test_line_2
    assert_output(/Hello Again\n/) { @ex1.firstProgram }
  end
  def test_line_3
    assert_output(/I like typing this.\n/) { @ex1.firstProgram }
  end
  def test_line_4
    assert_output(/This is fun.\n/) { @ex1.firstProgram }
  end
  def test_line_5
    assert_output(/Yay! Printing.\n/) { @ex1.firstProgram }
  end
  def test_line_6
    assert_output(/I'd much rather you 'not'.\n/) { @ex1.firstProgram }
  end
  def test_line_7
    assert_output(/I "said" do not touch this.\n/) { @ex1.firstProgram }
  end

  def test_lines
    assert_output(
/^Hello World!
Hello Again
I like typing this.
This is fun.
Yay! Printing.
I'd much rather you 'not'.
I "said" do not touch this.\n$/) { @ex1.firstProgram }
  end

end
