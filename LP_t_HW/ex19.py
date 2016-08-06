from sys import argv

script, argv_cheeses, argv_crackers = argv

# This is the function.
def cheese_and_crackers(cheese_count, boxes_of_crackers):
    print "You have %d cheeses!" % cheese_count
    print "You have %d boxes of crackers!" % boxes_of_crackers
    print "Man that's enough for a party!"
    print "Get a blanket. \n"

# These are all calls to that function.
# This one passes raw numbers
print "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

# This one passes global variables, which resolve to numbers.
print "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50

cheese_and_crackers(amount_of_cheese, amount_of_crackers)

# This one passes numbers that are mathed down to raw numbers.
print "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

# This one has variables that are resolved to numbers 
# and mathed down to other numbers.
print "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)

# This one uses the argv variables
# Argv unpacks as strings. 
# In order to bring it in as numbers, which our function needs, 
# we can use int() to convert the value to a number. 
# That's a function call as an argument!
print "Here's the values you first put in:"
cheese_and_crackers(int(argv_cheeses), int(argv_crackers))

# This one uses raw input as the script executes.
input_cheeses = int(raw_input("How many cheeses? "))
input_crackers = int(raw_input("How many cracker boxes? "))
cheese_and_crackers(input_cheeses, input_crackers)

# *******************************************************

# what is ok to pass as an argument:
# 1. Raw data.
# 2. GLobal variables.
# 3. Math. => which has implications...
# 4. Any combination of math, global variables and raw data.

# what happens if you pass a function call as an argument?
# after all, isn't that what addition does here?
