# random is a library that gives access to python's pseudo-random number generator
# and useful functions for manipulating it.
import random
# urllib is a libarary with calls to the internet
from urllib import urlopen
import sys

# These all-caps are special variables that are useful to our import libraries
WORD_URL = "http://learncodethehardway.org/words.txt"
WORDS = []

PHRASES = {
    "class %%%(%%%):":
     "Make a class named %%% that is-a %%%.",
    "class %%%(object):\n\tdef __init__(self, ***)":
     "class %%% has-a __init__ that takes self and *** parameters.",
    "class %%%(object):\n\tdef ***(self, @@@)":
     "class %%% has-a function named *** that takes self and @@@ parameters.",
    "*** = %%%()":
     "Set *** to an instance of class %%%.",
    "***.***(@@@)":
     "From *** get the *** function and call it with parameters self, @@@.",
    "***.*** = '***'":
     "From *** get the *** atribute and set it to '***'."
}

# do they want to drill phrases first
# creates two conditions for how many argv parameters can be passed
PHRASE_FIRST = False
if len(sys.argv) == 2 and sys.argv[1] == "english":
    PHRASE_FIRST = True

# load up the words from the website
for word in urlopen(WORD_URL).readlines():
    # with the imported words from the URL, first strip them of whitespace,
    # then add them to the script's empty WORDS list.
    # this is a way of parsing and loading data from a database.
    WORDS.append(word.strip())


def convert(snippet, phrase):
    # use a built-in string method to capitalize class names
    class_names = [w.capitalize() for w in 
                   random.sample(WORDS, snippet.count("%%%"))]
    # uses the sample method from random, samples from our words list
    # and takes only as many as are found in snippet.count()
    # s.count() is a built-in string method which counts occurneces 
    # of a substring in the string.
    other_names = random.sample(WORDS, snippet.count("***"))
    results = []
    param_names = []

    for i in range(0, snippet.count("@@@")):
        # randint gives a random number between x and y.
        # If these numbers are changed, the program will give different numbers
        # of parameters. But the numbers are good as they are.
        param_count = random.randint(1,3)
        # turns the list of param_names into a string
        param_names.append(', '.join(random.sample(WORDS, param_count)))

    for sentence in snippet, phrase:
        #idiomatic way of copying a list
        result = sentence[:]

        # fake class names
        for word in class_names:
            # s.replace is a built-in string method
            # which replaces param 0 with param 1 param 2 rimes.
            result = result.replace("%%%", word, 1)

        # fake other names
        for word in other_names:
            result = result.replace("***", word, 1)

        # fake parameter lists
        for word in param_names:
            result = result.replace("@@@", word, 1)

        results.append(result)

    return results


# keep going until they hit CTRL-D
try:
   while True:
       snippets = PHRASES.keys()
       # another method of random
       random.shuffle(snippets)

       for snippet in snippets:
           phrase = PHRASES[snippet]
           question, answer = convert(snippet, phrase)
           if PHRASE_FIRST:
              question, answer = answer, question

           print question

           raw_input("> ")
           print "ANSWER: %s\n\n" % answer
except EOFError:
    print "\nBye"
