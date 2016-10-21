class Ex12

  def prompt

    print "Give me a number: "
    number = gets.chomp.to_i

    bigger = number * 100
    puts "A bigger number is #{bigger}."

    print "Give me another Number: "
    another = gets.chomp
    number = another.to_i

    smaller = number / 100
    puts "A smaller number is #{smaller}"

  end

end

ex12 = Ex12.new()

ex12.prompt
