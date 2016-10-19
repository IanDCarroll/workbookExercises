class Ex11

  def get_age

    puts "How old are you? "
    age = gets.chomp

  end
  def get_height

    puts "How tall are you? "
    height = gets.chomp

  end
  def get_weight

    puts "How much do you weigh? "
    weight = gets.chomp

  end

  def answer

    age = get_age
    height = get_height
    weight = get_weight

    puts "So, you're #{age} old, #{height} tall and #{weight} heavy."

  end

end

ex11 = Ex11.new()

ex11.answer
