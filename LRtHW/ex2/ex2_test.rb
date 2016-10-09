require 'minitest/autorun'
require './ex2'

class Ex2Test < Minitest::Test

  def setup
    @ex2 = Ex2.new()
  end

  def test_line_1
    assert_output(/I could have code like this.\n/) { @ex2.comments }
  end
  def test_line_2
    assert_output(/This will run.\n/) { @ex2.comments }
  end 
  def test_lines
    assert_output(/^I could have code like this.\nThis will run.\n$/) { @ex2.comments }
  end

end
