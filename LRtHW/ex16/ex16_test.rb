require 'minitest/autorun'
require './ex16'

class TestReader
  def read_file
    open('test.txt')
  end
  def print_file
    print read_file.read
  end
end

class Dummy < Ex16
  
end

class Ex16Test < Minitest::Test

  def setup
    @reader = TestReader.new
    @dummy = Dummy.new
  end

  def test_file_line_1
    assert_output(/^ancient pond\n(.*\n){2}$/) { @reader.print_file }
  end
  def test_file_line_2
    assert_output(/^.*\na frog jumps in\n.*\n$/) { @reader.print_file }
  end
  def test_file_line_3
    assert_output(/^(.*\n){2}sound of water\n$/) { @reader.print_file }
  end

end
