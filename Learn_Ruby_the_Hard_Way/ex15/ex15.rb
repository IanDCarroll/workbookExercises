class Ex15

  def read_argv
    filename = ARGV.first
    puts "Here is your file #{filename}:"
    open(filename)
  end
  def display_argv
    print read_argv.read
  end

  def read_gets
    print "Type the filename again: "
    file_again = $stdin.gets.chomp
    open(file_again)
  end
  def display_gets
    print read_gets.read
  end

  def display
    display_argv
    display_gets
  end

end

#ex15 = Ex15.new

#ex15.display
