require 'minitest/autorun'
require './ex1'

class TestBlog < Minitest::Test

  def setup
    @ex1 = Ex1.new
  end

  def test_lines
    assert_output(/Hello World!\nHello Again\nI like typing this.\nThis is fun.\nYay! Printing.\nI'd much rather you 'not'.\nI "said" do not touch this.\n/) { @ex1.firstProgram }
  end

end
