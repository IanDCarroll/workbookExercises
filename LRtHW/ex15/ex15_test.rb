require 'minitest/autorun'
require './ex15'

class Ex15Test < Minitest::Test

  def setup
    @ex15 = Ex15.new()
  end

  def test_file_output_line_1
    assert_output(/This is stuff I typed into a file\./) { @ex15.read }
  end
  def test_file_output_line_2
    assert_output(/It is really cool stuff\./) { @ex15.read }
  end
  def test_file_output_line_3
    assert_output(/Lots and lots of fun to have in here\./) { @ex15.read }
  end

end
