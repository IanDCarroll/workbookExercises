# Write all of these into a program: (Delete after inclusion)
# Include a definition from the spec in your own words.
# 
# 
# 
# String Formats = [ %o, %u, %x, %X, %e, %E, %f, %F, %g, %G, %c, %% ]
# Operators = [ <>, { }, @, ., ;, ]

from sys import exit as e

alien = True

def lisztList():
    liszt = [ "0 - Hungarian Rhapsodies", "1 - Mephisto Waltzes", "2 - Les Preludes" ]
    for i in range(0, len(liszt)):
        yield liszt[i]

def useless():
    """Prints Useless."""
    global alien

    native = True
    number = (80 + 4) / 2
    floater = 3.61 - 2
    count = 10
    no = "No"

    count **= 2
    ll = lisztList()

    while number <= 8 ** 2:
        for i in ll:
            print i
            count += 1
        
        try:
           choice = int(raw_input("Choose > "))
        except ValueError:
           print "No! It has to be a number!"
           e()
        finally:
           pass

        if choice == 0 and number > floater:
           pass
        elif choice == 1 or number < floater:
           native = not True
           count *= 2
        elif choice == 2 and number >= floater:
           alien = False
           count /= 3
           break
        elif choice % 2 > 0 or number <= floater:
           print "\a%s, not that\b one.\f" % no
           continue
        else:
           count -= 1
           native = False
           alien = False
        number = number * floater
   
    del number

    if native == True and alien == True:
        count //= 4
        return "\n    Peace and Friendship:\r %d" % count
    elif native == True or alien != False:
        count %= 5
        return "\a\tWe gonna\v have problems.\\\\ %i" % count
    else:
        print "\"Useless!\" %r" % count
        print '\'Useless!\''
        e(None)

print useless()

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
# Keyword global:
#     Allows a function to use a global variable in scope.
# Keyword if:
#     Start of an if staement, if the statement is true, run code block.
# Keyword elif:
#     Middle of an if staement, if if statement + any preceding elifs is false
#     and elif is true, run code block
# Keyword else:
#     end of an if statement, if all else is false, run code block.
# Keyword or:
#     logical expression, statement is true if either condition is true.
# Keyword and:
#     logical expression, statement is true if both conditions are true.
# Keyword while:
#     start of a while loop. while condition is True, loop.
# Keyword for:
#     start of a for loop. For the conditions set in advance, loop.
# Keyword in:
#     Checks properties of the object to see if value is there.
# Keyword try:
#     start of exception handling. if no error raised, continues.
# Keyword except:
#     middle of exception handling. Tries this for the kind of error raised.
# Keyword pass:
#     closes out the loop and moves on. Sort of a placeholder.
# Keyword continue:
#     loops through again after executing code block.
# Keyword not:
#     flips a boolean to its oposite.
# Keyword print:
#     prints to console.
# Keyword return:
#     returns end value from the function.
# Keyword break:
#     breaks out of a loop, if statement or case statement.
# Keyword finally:
#     ends an exception statement, whatever is there runs.
# Keyword yield:
#     yield works a lot like return, but for iterable data types.
# Keyword assert:
#     tests to see if condition is true, if not, raises exception.
# Keyword raise:
#     returns an exception, usually an error message.
# Keyword is:
#     used to determine if something is of type or has property x.
# Keyword with:
#     allows for the use of two functions to work as a pair, 
#     such as automatically closing a file after it opens.
# Keyword del:
#     deletes a variable or item from memory, usefull for memory management,
#     Though, that's not necessary as python is a garbage collected language, 
#     but also for many other use cases, such as deleting items from lists, etc.
# Keyword exec:
#     Is an unknown keyword for me, but aparently executes code passed to it 
#     as a string, potentially C and byte code as well. Has security 
#     implications, and may be the function that compiles python scripts 
#     before execution.
# Keyword class:
#     Still don't quite grok this, essential for OOP.
# Keyword lambda:
#     Still don't grok this at all, essential for functional Proramming.

# Data Type None: 
#     nill, equivalent to 0 False or an empty string.
# Data Type False: 
#     a boolean expression equivalent to 0.
# Data Type True: 
#     a boolean expression equivalent to 1.
# Data Type String: 
#     An immutable array of characters.
# Data Type Number:
#     A whole integer.
# Data Type Float:
#     A number with arbirary number of decimals.
# Data Type List:
#     Mutable array of data types.


# String escape sequence \n:
#     New line character
# String escape sequence \t:
#     tab character
# String excape sequence \\:
#     backwhack character
# String escape sequence \':
#     single quotation
# String escape sequence \":
#     double quotation
# String escape sequence \a:
#     ASCII bell
# String escape sequence \b:
#     ASCII backspace
# String escape sequence \r:
#     ASCII carriage return
# String escape sequance \f:
#     ASCII formfeed
# String escape sequence \v:
#     Vertical feed

# String format %s:
#     inserts a string.
# String format %r:
#     inserts a raw value.
# String format %d:
#     inserts a digit.
# String format #i:
#     inserts an integer.

# Operator "()": 
#     Calls the function with any arguments inside.
# Operator ":": 
#     Indicates a code block to be run only if preceding is True
# Operator '"': 
#     Defines a string.
# Operator "'": 
#     Alternately defines a string.
# Operator "+":
#     Adds or concatenates depending on context.
# Operator "-":
#     subtracts
# Operator "*":
#     multiplies, or repeats a string depending on context.
# Operator "/":
#     divides
# Operator "//":
#     special truncated division.
# Operator "**":
#     exponent.
# Operator "[]":
#     decalres a list.
# Operator "{}":
#     declares a dictionary.
# Operator "=":
#     assignment operator.
# Operator "==":
#     is-equal-to operator.
# Operator "!=":
#     is not equal-to operator.
# Operator ">":
#     is greater-than operator.
# Operator "<":
#     is less-than operator.
# Operator ">=":
#     is greater-than-or-euqal-to operator.
# Operator "<=":
#     is less-than-or-equal-to operator.
# Operator ",":
#     separates elements in a list or set of arguments.
