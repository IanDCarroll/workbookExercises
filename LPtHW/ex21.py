def add(a, b):
    print "ADDING %d + %d" % (a, b)
    return a + b

def subtract(a, b):
    print "SUBTRACTING %d - %d" % (a, b)
    return a - b

def multiply(a, b):
    print "MULTIPLYING %d * %d" % (a, b)
    return a * b

def divide(a, b):
    print "DIVIDING %d / %d" % (a, b)
    return a / b


print "Let's do some math with functions!"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

print "Age: %d, Height: %d, Weight: %d, IQ: %d" % (age, height, weight, iq)


# A puzzle for extra credit, type it in anyway.
print "Here is a puzzle."

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

print "That becomes: ", what, "Can you do it by hand?"

# **************************

# I've used return extrensively, and this still is puzzling.
# Maybe it's the time of day that I'm writing it,
# Maybe it's that I'm coming to a deeper understanding.

# In Python, is the function being called 
# by the declaration of the variable?
# Or is it being called when the variable is called to be printed,
# causing the variable to call the function?

# return is used by anything to the right of an =. Hmmm.

# If i say print add(30, 5) That calls the print function, 
# which calls the add function,
# But that's not exactly to the right of an =.
# Unless print "w/e" is the same as print = "w/e".
# Are functions really special variables?!
# Or unless the script itself is one big variable. "script = ex21.py"?
