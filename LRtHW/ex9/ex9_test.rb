require 'minitest/autorun'
require './ex9'

class Ex9Test < Minitest::Test

  def setup
    @ex9 = Ex9.new()
  end

  def test
    assert_output(//) { @ex9.printingX3 }
  end

end
