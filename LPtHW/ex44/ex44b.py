class Parent(object):

    def override(self):
        print "PARENT override()"

class Child(Parent):

    def override(self):
        print "CHILD override()"

dad = Parent()
son = Child()

dad.override()
son.override()

# The reason son overrides dad is because when the Python interpreter looks up son.override()
# it first checks in the son variable.
# There, it discovers that son points it to the Child() class.
# so it looks up override inside the Child class.
# it finds a method called override there, so it stops looking, and runs that code block.
# if it had not found an override function in child, it would check in Parent, since Child is a Parent.
# if it found the method in Parent, it would use that -inheritance-
# if it did not find the method in Parent, it would check object -inheritance, again-
# and if it still did not find it in object, it would throw an error.
# inheritance is an emergent feature of how the interpreter looks up named variables.
