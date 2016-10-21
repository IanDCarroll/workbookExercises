require 'minitest/autorun'
require './ex12'

class Ex12Test < Minitest::Test

  def setup
    @ex12 = Ex12.new()
  end

  def test_what_comes_out
    assert_output(//) { @ex12.prompt }
  end

end
