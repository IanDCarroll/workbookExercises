class Ex15

  def read_argv

    filename = ARGV.first

    txt = open(filename)

    puts "Here is your file #{filename}:"
    print txt.read

  end

  def read_gets

    print "Type the filename again: "
    file_again = $stdin.gets.chomp

    txt_again = open(file_again)

    print txt_again.read

  end

  def read
    read_argv
    read_gets
  end

end
