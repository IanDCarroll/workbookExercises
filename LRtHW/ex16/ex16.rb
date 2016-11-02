class Ex16

  def get_argv
    filename = ARGV.first
  end

  def print_first
    puts "We're going to erase #{get_argv}"
    puts "If you don't want that, hit CTRL-C (^C)."
    puts "If you do want that, hit RETURN."
  end

  def print_second
    puts "Opening the file..."
  end

  def open_file
    $stdin.gets
    open(get_argv, 'w')
  end

  def truncate
    puts "Truncating the file.  Goodbye!"
    open_file.truncate(0)
  end

  def print_third
    puts "Now I'm going to ask you for three lines."
  end


  def get_new_lines
    print "line 1: "
    line1 = $stdin.gets.chomp
    print "line 2: "
    line2 = $stdin.gets.chomp
    print "line 3: "
    line3 = $stdin.gets.chomp

    puts "I'm going to write these to the file."
    target = open_file
    target.write(line1)
    target.write("\n")
    target.write(line2)
    target.write("\n")
    target.write(line3)
    target.write("\n")
  end

  def close_file
    puts "And finally, we close it."
    open_file.close
  end
  
  def writer
    get_argv
    print_first
    print_second
    open_file
    truncate
    print_third
    get_new_lines
    close_file
  end

end

#ex16 = Ex16.new

#ex16.writer
