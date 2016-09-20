class Parent(object):

    def implicit(self):
        print "PARENT implicit()"

class Child(Parent):
    pass

dad = Parent()
son = Child()

dad.implicit()
son.implicit()

# Inheritance. Child gets ALL of its features from Parent. 
# It has no features of its own at all. Yet it still has features.
# This is because it is a trust fund kid. It inherits. It's uselessness is 100% supported.
