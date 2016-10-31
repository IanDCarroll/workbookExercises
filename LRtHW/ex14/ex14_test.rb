require 'minitest/autorun'
require './ex14'

class Ex14Test < Minitest::Test

  def setup
    @ex14 = Ex14.new()
  end

  def test_something
    assert_output(//) { @ex14.prompt }
  end

end
