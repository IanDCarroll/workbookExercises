require 'minitest/autorun'
require './ex8'

class Ex8Test < Minitest::Test

  def setup
    @ex8 = Ex8.new()
  end

  def test
    assert_output(//) { @ex8.printingX2 }
  end

end
