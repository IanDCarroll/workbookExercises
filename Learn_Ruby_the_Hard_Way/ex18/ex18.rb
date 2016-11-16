# this one is like your scripts with ARGV
def print_two(*args)
  arg1, arg2 = args
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# ok, that *args is actually pointless, we can just do this
#    But is it really pointless? 
#    Could you use it to input a variable number of arguments?
def print_two_again(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# this just prints one
#    Is this all a monad is?
def print_one(arg1)
  puts "arg1: #{arg1}"
end

print_two("Zed","Shaw")
print_two_again("Zed","Shaw")
print_one("First!")
