require 'minitest/autorun'
require './ex7'

class Ex7Test < Minitest::Test

  def setup
    @ex7 = Ex7.new()
  end

  def test_line_
    assert_output(//) { @ex7.more_printing }
  end

end
