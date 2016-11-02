class Ex16

  def get_argv
    filename = ARGV.first
  end

  def print_1
    puts "We're going to erase #{get_argv}"
    puts "If you don't want that, hit CTRL-C (^C)."
    puts "If you do want that, hit RETURN."
  end

  def print_2
    puts "Opening the file..."
  end

  def open_file
    $stdin.gets
    open(get_argv, 'w')
  end

  def print_3
    puts "truncating the file. Goodbye!"
  end

  def truncate
    open_file.truncate(0)
  end

  def print_4
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

  def print_5
    puts "And finally, we close it."
  end

  def close_file
    open_file.close
  end
  
  def writer
    get_argv
    print_1
    print_2
    open_file
    print_3
    truncate
    print_4
    get_new_lines
    print_5
    close_file
  end

end

#ex16 = Ex16.new

#ex16.writer
