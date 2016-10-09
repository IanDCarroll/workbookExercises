require 'minitest/autorun'
require './ex1'

class TestBlog < Minitest::Test

  def setup
    @ex1 = Ex1.new
  end

  def test_output
    assert_output(/Hello World!/) { @ex1.firstProgram }
    assert_output(/Hello Again/) { @ex1.firstProgram }
    # assert_output(/Hello World!/) { @ex1.firstProgram }
  end
end
