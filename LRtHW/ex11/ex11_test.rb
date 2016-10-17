require 'minitest/autorun'
require './ex11'

class Ex11Test < Minitest::Test

  def setup
    @ex11 = Ex11.new()
  end

  def test
    assert_output(//) { @ex11.questions }
  end

end
