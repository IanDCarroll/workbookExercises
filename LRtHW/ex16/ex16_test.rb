require 'minitest/autorun'
require './ex16'

class TestReader
  def print_file
    print open('test.txt').read
  end
end

class Dummy < Ex16
  def open_file; open('test.txt', 'w') end
  def get_new_lines
    target = open_file
    target.write('ancient pond')
    target.write("\n")
    target.write('a frog jumps in')
    target.write("\n")
    target.write('sound of water')
    target.write("\n")
  end
end

# The files are being written, but TestReader only detects an empty file.
#dummy = Dummy.new
#dummy.writer

class Ex16Test < Minitest::Test

  def setup
    @dummy = Dummy.new
    @reader = TestReader.new
  end

  def test_file_line_1
    #@dummy.writer
    assert_output(/^ancient pond\n(.*\n){2}$/) { @reader.print_file }
  end
  def test_file_line_2
    #@dummy.writer
    assert_output(/^.*\na frog jumps in\n.*\n$/) { @reader.print_file }
  end
  def test_file_line_3
    #@dummy.writer
    assert_output(/^(.*\n){2}sound of water\n$/) { @reader.print_file }
  end

  def test_
    assert_output(//) { @dummy.print_ }
  end

end
