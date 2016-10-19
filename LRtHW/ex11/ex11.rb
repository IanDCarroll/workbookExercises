class Ex11

  def questions

    puts "How old are you? "
    age = gets.chomp
    puts "How tall are you? "
    height = gets.chomp
    puts "How much do you weigh? "
    weight = gets.chomp
    return answer(age, height, weight)

  end

  def answer(age, height, weight)

    puts "So, you're #{age} old, #{height} tall and #{weight} heavy."

  end

end

ex11 = Ex11.new()

ex11.questions()
