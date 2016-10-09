require 'minitest/autorun'
require './ex1'

class TestBlog < Minitest::Test

  def setup
    @ex1 = Ex1.new
  end

  def test_lines
    assert_output(/Hello World!\nHello Again/) { @ex1.firstProgram }
  end

end
