the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# As a pythonian, this is what I'm used to
# However, using this in Ruby land makes me "bad".
# So unless I want to be unjustly judged, I won't use this.
for number in the_count
  puts "this is count #{number}"
end

# This is how to be a good conformist :P
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

# and this is how to make it even more succinct yet unreadable to non-rubyists
# Ruby has to be a special snowflake, but all the same special snowflake.
change.each {|i| puts "I got #{i}" }

# As anywhere else
elements = []

# Ruby's range operator is differently syntaxed than Python 
# and both are used for iterating over lists(arrays).
# It seems interesting and useful, or should I just say different.
# Different is good.
(0..5).each do |i|
  puts "adding #{i} to the list."
  # pushes the i variable on the *end* of the list
  elements.push(i)
end

# as above
elements.each {|i| puts "Element was #{i}" }
