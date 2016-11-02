require 'minitest/autorun'
require './ex16'

class TestReader
  def print_file
    print open('test.txt').read
  end
end

class Dummy < Ex16
  def open_file
    #$stdin.gets
    open('test.txt', 'w') 
  end
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
# dummy = Dummy.new
# dummy.writer

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

  def test_print_1
    assert_output(/^We're going to erase .*\n.*$/) { @dummy.print_1 }
    assert_output(/^.*\nIf you don't want that, hit CTRL-C \(\^C\)\.*$/) { @dummy.print_1 }
    assert_output(/^(.*\n){2}If you do want that, hit RETURN\.$/) { @dummy.print_1 }
  end
  def test_print_2
    assert_output(/^Opening the file\.\.\.\n$/) { @dummy.print_2 }
  end
  def test_print_3
    assert_output(/^Truncating the file\. Goodbye!$/) { @dummy.print_3 }
  end
  def test_print_4
    assert_output(/^Now I'm going to ask you for three lines\.$/) { @dummy.print_4 }
  end
  def test_print_5
    skip assert_output(//) { @dummy.print_5 }
  end
  def test_print_6
    skip assert_output(//) { @dummy.print_6 }
  end
end
