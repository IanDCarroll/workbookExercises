require 'minitest/autorun'
require './ex16'

class Ex16Test < Minitest::Test

  def setup
    @ex16 = Ex16.new
  end

  def test_something
    assert_output(//) { @ex16.files }
  end

end
