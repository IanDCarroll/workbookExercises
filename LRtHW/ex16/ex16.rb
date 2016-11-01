class Ex16

  def get_argv
    filename = ARGV.first
  end

  def print_first
    puts "We're going to erase #{get_argv}"
    puts "If you don't want that, hit CTRL-C (^C)."
    puts "If you do want that, hit RETURN."
  end
  
  def open_file
    $stdin.gets
    puts "Opening the file..."
    open(filename, 'w')
  end

  def truncate
    puts "Truncating the file.  Goodbye!"
    open_file.truncate(0)
  end

  def print_second
    puts "Now I'm going to ask you for three lines."
  end


  def get_new_lines
    print "line 1:"
    line1 = $stdin.gets.chomp
    print "line 2:"
    line2 = $stdin.gets.chomp
    print "line 3:"
    line3 = $stdin.gets.chomp

    puts "I'm going to write these to the file."

    target.write(line1)
    target.write("\n")
    target.write(line2)
    target.write("\n")
    target.write(line3)
    target.write("\n")
  end

  def close_file
    puts "And finally, we close it."
    target.close
  end
  
  def writer
    get_argv
    print_first
    open_file
    truncate
    print_second
    get_new_lines
    close_file
  end

end

ex16 = Ex16.new

ex16.writer
