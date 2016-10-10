require 'minitest/autorun'
require './ex5'

class Ex5Test < Minitest::Test

  def setup
    @ex5 = Ex5.new()
  end

  def test
    assert_output(//) { @ex5.variables }
  end

end
