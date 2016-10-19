require 'minitest/autorun'
require './ex11'

class Ex11Test < Minitest::Test

  def setup
    @ex11 = Ex11.new()
  end

  def test_line
    assert_output(/So, you're 33 years old, 66 inches tall and 155 lbs heavy\./) { @ex11.answer("33 years","66 inches","155 lbs") }
  end

end
