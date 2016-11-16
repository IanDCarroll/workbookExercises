require 'minitest/autorun'
require './ex14'

class Dummy < Ex14
  def prompt_likes; "Yes" end
  def prompt_lives; "Los Angeles" end
  def prompt_computer; "old" end
end

class Ex14Test < Minitest::Test

  def setup
    @ex14 = Dummy.new()
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
