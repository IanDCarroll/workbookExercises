class Ex6

  def strings_and_text
    types_of_people = 10
    x = "There are #{types_of_people} types of people."
    binary = "binary"
    do_not = "don't"
    y = "Those who know #{binary} and those who #{do_not}."

    puts x
    puts y

    puts "I said: #{x}."
    puts "I also said: '#{y}'."

    hilarious = true
    joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

    puts joke_evaluation

    w = "This is the left side of..."
    e = "a string with a right side."

    puts w + e
  end
end

ex6 = Ex6.new()

ex6.strings_and_text()
