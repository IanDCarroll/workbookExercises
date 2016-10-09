require 'minitest/autorun'
require './ex1'

class TestBlog < Minitest::Test

  def setup
    @ex1 = Ex1.new
  end

  def test_line_1
    assert_output(/Hello World!/) { @ex1.firstProgram }
  end
  def test_line_2
    assert_output(/Hello Again/) { @ex1.firstProgram }
  end
  # def test_line_3
    # assert_output(/Hello World!/) { @ex1.firstProgram }
  # end
end
