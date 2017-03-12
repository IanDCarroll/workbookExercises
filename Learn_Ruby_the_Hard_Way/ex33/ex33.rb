def whileCounter(stopping_point, increment)
  i = 0
  numbers = []

  (0 .. stopping_point).each do |j|
    if j % increment == 0
      puts "At the top i is #{i}"
      numbers.push(i)

      i += increment
      puts "Numbers now: ", numbers
      puts "At the bottom i is #{i}"
    end
  end


  puts "The numbers: "

  # remember you can write this 2 other ways?
  numbers.each {|num| puts num }
end

whileCounter(12, 2)
