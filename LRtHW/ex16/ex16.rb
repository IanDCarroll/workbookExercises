class Ex16

  def print_1
    puts "We're going to erase #{get_argv}"
    puts "If you don't want that, hit CTRL-C (^C)."
    puts "If you do want that, hit RETURN."
  end
  def print_2
    puts "Opening the file..." 
    puts "Truncating the file. Goodbye!"
  end
  def print_3
    puts "Now I'm going to ask you for three lines."
  end
  def print_4
    puts "I'm going to write these to the file."
  end
  def print_5
    puts "And finally, we close it."
  end



  def get_argv
    filename = ARGV.first
  end
  def open_file
    $stdin.gets
    open(get_argv, 'w')
  end
  def get_new_lines
    print "line 1: "
    line1 = $stdin.gets.chomp
    print "line 2: "
    line2 = $stdin.gets.chomp
    print "line 3: "
    line3 = $stdin.gets.chomp
    print_4
    target = open_file
    target.write(line1 + "\n" + line2 + "\n" + line3 + "\n")
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
    get_new_lines
    print_5
    close_file
  end

end

#ex16 = Ex16.new

#ex16.writer
