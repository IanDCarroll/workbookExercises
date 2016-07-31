name = 'Zed A. Shaw'
age = 35 #not a lie in 2009
height = 74 #inches
metHeight = height * 2.54
weight = 180 #pounds
metWeight = weight * 0.453592
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'

# the ("%s" % my_var) is an embedded variable in the string. 
# If you just add the variable in maually between strings, python concats.
print "Let's talk about %s." % name
print "He's %d inches tall, which is %d centemeters." % (height, round(metHeight))
print "He's %d pounds heavy, which is %d kilograms." % (weight, round(metWeight))
print "Actually that's not too heavy."
print "He's got %s eyes and %s hair." % (eyes, hair)
print "His teeth are usually %s depending on the coffee." % teeth
print "If I add %d, %d, and %d I get %d" % (age, height, weight, age + height + weight)

