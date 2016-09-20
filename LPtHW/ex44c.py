class Parent(object):

    def altered(self):
        print "PARENT altered()"

class Child(Parent):

    def altered(self):
        print "CHILD, BEFORE PARENT altered()"
        # call super with args Child and self, 
        # then find from the next class above Child 
        #    that has a method called "altered"
        # and run whatever code the method contains
        super(Child, self).altered()
        # contiune with the code block until whatever.
        print "CHILD, AFTER PARENT altered()"

dad = Parent()
son = Child()

dad.altered()
print "-" * 10
son.altered()
