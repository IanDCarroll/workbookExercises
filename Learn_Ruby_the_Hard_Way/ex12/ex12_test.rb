require 'minitest/autorun'
require './ex12'

class Ex12Test < Minitest::Test

  def setup
    @ex12 = Ex12.new()
  end

  def test_first_output
    assert_output(/^A bigger number is 1000$/) { @ex12.big_prompt(10) }
  end

  def test_final_output
    assert_output(/^A smaller number is 2$/) { @ex12.small_prompt(200) }
  end

end
