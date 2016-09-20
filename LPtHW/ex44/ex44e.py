class Other(object):

    def override(self):
        print "OTHER override()"

    def implicit(self):
        print "OTHER implicit()"

    def altered(self):
        print "OTHER altered()"

class Child(object):

    def __init__(self):
        self.other = Other()

    def implicit(self):
        self.other.implicit()

    def override(self):
        print "CHILD override()"

    def altered(self):
        print "CHILD BEFORE OTHER altered()"
        self.other.altered()
        print "CHILD AFTER OTHER altered()"

son = Child()

son.implicit()
son.override()
son.altered()

# Composition allows the same functionality as inheritance, 
# but without the danger of creating dependencies with inheritance.
# This allows for more modular code that is easier to maintain.
# In fact, you can even abstract away Other() into its own module
# and import it!

# instead of parent is-a child, child has-a other.
# Basically we are bringing in one object to serve the other rather than
# have that other interit from the object serving it.
