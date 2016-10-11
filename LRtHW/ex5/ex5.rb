class Ex5

  def variables

    my_name = 'Zed A. Shaw'
    my_age = 35 # not a lie in 2009
    my_height = 74 # inches
    my_weight = 180 # lbs
    my_eyes = 'Blue'
    my_teeth = 'White'
    my_hair = 'Brown'

    puts "Let's talk about #{my_name}."
    puts "They're #{my_height} inches tall."
    puts "They're #{my_weight} pounds heavy."
    puts "Actually that's not too heavy."
    puts "They've got #{my_eyes} eyes and #{my_hair} hair."
    puts "Their teeth are usually #{my_teeth} depending on the coffee."

    # this line is tricky, try to get it exactly right
    puts "If I add #{my_age}, #{my_height}, and #{my_weight} I get #{my_age + my_height + my_weight}."

  end 

end

ex5 = Ex5.new()

ex5.variables()
