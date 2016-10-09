people = 30
cars = 40
buses = 15

#if there are more cars than people, print block.
if cars > people:
    print "We should take the cars."
#if "if" == False, evaluate elif.
elif cars < people:
    print "we should not take the cars."

#if there are more buses than cars, print block.
if buses > cars:
    print "That's too many buses."
#if "if" = False and buses are less than cars, print block.
elif buses < cars:
    print "Maybe we could take the buses."
# if both if and elif are False, print block.
else:
    print "We still can't decide."

# If there are more people than buses, print block.
if people > buses:
    print "Alright, let's just take the buses."
# if all above it are false, print block.
else:
    print "Fine, let's just stay home then."

# elif is a shortenting of else if. 
# If "if" returns true, run the block. If "if" returns false, run elif.
# else is just like elif in a lot of ways.
# if "if" and all "elif" return false, run else.
