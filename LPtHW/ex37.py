# Write all of these into a program: (Delete after inclusion)
# Include a definition from the spec in your own words.
# Keywords = [ and, del, not, while, elif, global, or, with, assert, else, if, pass, yield, break, except, print, class, exec, in, raise, continue, finally, is, return, def, for, lambda, try ]
# Data Types = [ True, False, numbers, floats, lists]
# String Escape Sequences = [ \\, \', \", \a, \b, \f, \n, \r, \t, \v ]
# String Formats = [ %d, %i, %o, %u, %x, %X, %e, %E, %f, %F, %g, %G, %c, %r, %s, %% ]
# Operators = [ +, -, *, **, /, //, %, <, >, <=, >=, ==, !=, <>, [ ], { }, @, ,, ., =, ;, +=, -=, *=, /=, //=,%=, **= ]

from sys import exit as e

def useless():
    """Prints Useless."""
    print "Useless!"
    print 'Useless!'
    e(None)

useless()

# Definitions:

# Keyword from:
#     Find a module of name x and import it,
#     initialize if necessacry.
# Keyword import:
#     Find a module of name "x" and initialize it if necessary.
#     If from is used prior, define the value with name "x"
#     in the local namespace.
#     It first searches for modules in sys.modules for cached ones.
#     If it doens't find it there, then sys.meta_path is searched.
#     It searches some more, 
#     but if it can't find anything, ImportError is raised.
# Keyword as:
#     renames the module for the local namespace, 
#     so less confilcts or easier typing.
# Keyword def: 
#     Defines a function.
# Data Type None: nill, equivalent to 0 False or an empty string.
# Data Type String: An immutable array of characters.
# Operator "()": Calls the function with any arguments inside.
# Operator ":": Indicates a code block to be run only if preceding is True
# Operator '"': Defines a string.
# Operator "'": Alternately defines a string.
