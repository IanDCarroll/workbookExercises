require 'minitest/autorun'
require './ex6'

class Ex6Test < Minitest::Test

  def setup
    @ex6 = Ex6.new()
  end

  def test
    assert_output(//) { @ex6.strings_and_text }
  end
end
