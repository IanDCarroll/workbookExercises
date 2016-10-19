require 'minitest/autorun'
require './ex11'

class Ex11Test < Minitest::Test

  def setup
    @ex11 = Ex11.new()
  end

  def test_line
    assert_output(/So, you're .* old, .* tall and .* Heavy\./) { @ex11.questions }
  end

end
