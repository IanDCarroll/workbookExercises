from sys import argv

script, argv_countTo, argv_countBy = argv

def pointlessCounter(countTo, countBy):
    i = 0
    numbers = []

    # for i in range(0,countTo,countBy):
    while i < countTo:
        # Prints the number (counter) in question
        print "At the top i is %d" % i
        # appends that number to a list.
        numbers.append(i)

        # changes the number (counter). 
        # This is important, otherwise there will be an infinite loop here.
        i = i + countBy # i++ doesn't work syntactically here. 
        # You need to declare the variable and assign it the long way.
        print "Numbers now: ", numbers

        print "At the bottom i is %d" % i

    print "The numbers: "


    # This is a for loop that goes through
    # and prints each value in the list separately 
    # as a sort of summation of the process above.
    for num in numbers:
        print num
'''
q1 = "How many to count pointlessly? "
q2 = "What number should we pointlessly count by? "
pointlessCounter(int(raw_input(q1),int(raw_input(q2))
'''
pointlessCounter(int(argv_countTo),int(argv_countBy))

# using argv instead of raw_input():
# In both cases, you must convert the values to int() in python.

# range() has a built in incrementor, it's third optional argument.
# This arg, when not decalred defaults to 1.
# declaring i and then i = i + 1 has no effect on it.

# A while loop on the other hand, has no such built-in. 
# So there is a much greater danger to infinite loops. 
# You have to make sure there is an exit condition 
# when you use a while loop, which is typcially handled 
# by a separate variable that acts as a counter (usually designated "i").
