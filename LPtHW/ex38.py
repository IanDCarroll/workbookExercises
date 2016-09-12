ten_things = "Apples Oranges Crows Telephone Light Sugar"

print "Wait there's not 10 things in that list, let's fix that."

stuff = ten_things.split(' ')
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

while len(stuff) != 10:
    # more_stuff.pop is pop(more_stuff)
    next_one = more_stuff.pop()
    print "Adding: ", next_one
    # stuff.append(next_one) is append(stuff, next_one)
    stuff.append(next_one)
    print "There's %d items now." % len(stuff)

print "There we go: ", stuff

print "Let's do some things with stuff."

print stuff[1]
print stuff[-1] # whoa! fancy
# stuff.pop() is pop(stuff)
print stuff.pop()
# ' '.join(stuff) is join(' ', stuff)
print ' '.join(stuff) # what? cool!
# '#'.join(stuff[3:5]) is join('#', stuff[3:5])
print '#'.join(stuff[3:5]) # super stellar!

# class: https://docs.python.org/2.7/tutorial/classes.html
#     in python, classes do all the same things classes are supposed to do, 
# they inherit, they can be overridden, they have methods, arbitrary ammounts
# and kinds of data, but they are also created at runtime and can be modified
# after creation. Classes are objects in Python, classes are public, member
# functions are virtual.

# What's the relationship between dir(something) and the "class" of something?
#    dir() returns a list of atributes the class has.
