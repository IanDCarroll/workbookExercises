class Ex10

  def whatWasThat

    puts "\tI'm tabbed in."
    puts "I'm split"
    puts "on a line."
    puts "I'm  a  cat."
    puts """
I'll do a list:
\t* Cat food
\t* Fishes
\t* Catnip\n\t* Grass
   """

  end

end

ex10 = Ex10.new()

ex10.whatWasThat()
