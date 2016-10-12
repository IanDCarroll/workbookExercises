require 'minitest/autorun'
require './ex6'

class Ex6Test < Minitest::Test

  def setup
    @ex6 = Ex6.new()
  end

  # simple tests that are very strict. No deviation! Ever! #

  def test_line_
    assert_output(/There are 10 types of people\.\n/) { @ex6.strings_and_text }
  end
  def test_line_
    assert_output(/Those who know binary and those who don't\.\n/) { @ex6.strings_and_text }
  end
  def test_line_
    assert_output(/I said: There are 10 types of people\.\.\n/) { @ex6.strings_and_text }
  end
  def test_line_
    assert_output(/I also said: 'Those who know binary and those who don't\.'\.\n/) { @ex6.strings_and_text }
  end
  def test_line_
    assert_output(/Isn't that joke so funny\?! (false|true)\n/) { @ex6.strings_and_text }
  end
  def test_line_
    assert_output(/This is the left side of\.\.\.a string with a right side\.\n/) { @ex6.strings_and_text }
  end

end
