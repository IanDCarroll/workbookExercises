
# this is the function called later in the script
def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man, that's enough for a party!"
  puts "Get a blanket.\n"
end


# we can pass in data types (enclosed in objects in Ruby)
puts "We can give the function numbers directly:"
cheese_and_crackers(20, 30)


# We can indirectly pass them with a variable from our script.
# This is useful because we can change all function calls that are passed
# this argument with only a single adjustnment to the code. Diabolical!
puts "OR, we can just use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50

cheese_and_crackers(amount_of_cheese, amount_of_crackers)

# we can even pass whole functions in as arguments!!! 
# Or Objects, for that matter.
# In ruby, primitive data types are not exposed, 
# but always wrapped in an object.
# So no matter what, you only ever pass objects and their methods.
puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

# this can get as convoluted as we like, but it's better to do this 
# kind of stuff someplace other than in the method's parameter.
# It shoudl be cleanly abstracted to get the jist 
# without getting lost in the weeds.
puts "And we can combine the two, vairables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)
