class Ex12

  def get_bigger

    print "Give me a number: "
    number = gets.chomp.to_i
    big_prompt(number)

  end

  def big_prompt(number)

    bigger = number * 100
    puts "A bigger number is #{bigger}"

  end

  def get_smaller

    print "Give me another Number: "
    another = gets.chomp
    number = another.to_i
    prompt(number)

  end

  def prompt(number)

    smaller = number / 100
    puts "A smaller number is #{smaller}"

  end

end

# uncomment to run #

# ex12 = Ex12.new()

# ex12.get_bigger
# ex12.get_smaller
