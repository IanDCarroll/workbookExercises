require 'minitest/autorun'
require './ex15'

class Dummy < Ex15
  def read_argv; open('ex15_sample.txt') end
  def read_gets; open('ex15_sample.txt') end
end

class Ex15Test < Minitest::Test

  def setup
    @ex15 = Dummy.new
    #@ex15 = Ex15.new
  end

  def test_argv_output_line_1
    assert_output(/^This is stuff I typed into a file\.\n(.*\n){2}$/) { @ex15.display_argv }
  end
  def test_argv_output_line_2
    assert_output(/^.*\nIt is really cool stuff\.\n.*\n$/) { @ex15.display_argv }
  end
  def test_argv_output_line_3
    assert_output(/^(.*\n){2}Lots and lots of fun to have in here\.\n$/) { @ex15.display_argv }
  end



  def test_gets_output_line_1
    assert_output(/^This is stuff I typed into a file\.\n(.*\n){2}$/) { @ex15.display_gets }
  end
  def test_gets_output_line_2
    assert_output(/^.*\nIt is really cool stuff\.\n.*\n$/) { @ex15.display_gets }
  end
  def test_gets_output_line_3
    assert_output(/^(.*\n){2}Lots and lots of fun to have in here\.\n$/) { @ex15.display_gets }
  end

end
