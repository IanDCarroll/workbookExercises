require 'minitest/autorun'
require './ex14'

class Ex14Test < Minitest::Test

  def setup
    @ex14 = Ex14.new()
  end

  def test_final_output_line_1
    assert_output(/^Alright, so you said .* about liking me\.\n(.*\n){2}$/) { @ex14.prompt }
  end
  def test_final_output_line_2
    assert_output(/^.*\nYou live in .*\.  Not sure where that is\.\n.*\n$/) { @ex14.prompt }
  end
  def test_final_output_line_3
    assert_output(/^(.*\n){2}And you have a .* computer.  Nice\.\n$/) { @ex14.prompt }
  end

end
