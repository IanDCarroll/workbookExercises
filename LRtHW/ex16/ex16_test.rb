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

class Ex16Test < Minitest::Test

  def setup
    @reader = TestReader.new
  end

  def test_file_line_1
    assert_output(/ancient pond\n/) { @reader.print_file }
  end
  def test_file_line_2
    assert_output(/a frog jumps in\n/) { @reader.print_file }
  end
  def test_file_line_3
    assert_output(/sound of water\n/) { @reader.print_file }
  end

end
