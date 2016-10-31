require 'minitest/autorun'
require './ex15'

class Ex15Test < Minitest::Test

  def setup
    @ex15 = Ex15.new()
  end

  def test_argv_output_line_1
    assert_output(/^This is stuff I typed into a file\.\n(.*\n){2}$/) { @ex15.read_argv }
  end
  def test_argv_output_line_2
    assert_output(/^.*\nIt is really cool stuff\.\n.*\n$/) { @ex15.read_argv }
  end
  def test_argv_output_line_3
    assert_output(/^(.*\n){2}Lots and lots of fun to have in here\.\n$/) { @ex15.read_argv }
  end
  def test_gets_output_line_1
    assert_output(/^This is stuff I typed into a file\.\n(.*\n){2}$/) { @ex15.read_gets }
  end
  def test_gets_output_line_2
    assert_output(/^.*\nIt is really cool stuff\.\n.*\n$/) { @ex15.read_gets }
  end
  def test_gets_output_line_3
    assert_output(/^(.*\n){2}Lots and lots of fun to have in here\.\n$/) { @ex15.read_gets }
  end

end
