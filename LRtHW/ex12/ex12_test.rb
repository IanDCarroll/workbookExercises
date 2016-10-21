require 'minitest/autorun'
require './ex12'

class Ex12Test < Minitest::Test

  def setup
    @ex12 = Ex12.new()
  end

  def test_final_output
    assert_output(/A smaller number is \d+\.?\d*/) { @ex12.prompt }
  end

end
